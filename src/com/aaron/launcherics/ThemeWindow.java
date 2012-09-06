package com.aaron.launcherics;

import java.sql.Wrapper;

import com.android.internal.telephony.cat.FontSize;

import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.TabHost.TabContentFactory;

public class ThemeWindow{
	
	private View mParentView;
	private PopupWindow mPopupWindow;
	private LayoutInflater mLayoutInflater;
	
	private TabHost root;
	private TabWidget tabs;
	private ImageView ivw_theme_icon;
	private FrameLayout tabcontent;
	private GridView grid_themes;
	private GridView grid_translations;
	
	private String[] themesTitleArray = {
		"LightGray", "Cowboy",
		"CryStal", "Ink",
		"Orange", "Wood"
	};
	
	private int[] themesIconIdArray = {
		R.drawable.popup_theme_lightcray,
		R.drawable.popup_theme_cowboy,
		R.drawable.popup_theme_crystal,
		R.drawable.popup_theme_ink,
		R.drawable.popup_theme_orange,
		R.drawable.popup_theme_wood
	};
	
	private String[] translationsTitleArray = {
		"Standard" , "RotateUp",
		"RotateDown","CubeIn",
		"CubeOut"
	} ;
	
	private int[] translationsIconIdArray = {
		R.drawable.letou_rom_popup_transition_standard,
		R.drawable.letou_rom_popup_transition_rotateup,
		R.drawable.letou_rom_popup_transition_rotatedown,
		R.drawable.letou_rom_popup_transition_cubein,
		R.drawable.letou_rom_popup_transition_cubeout
	};
	
	public ThemeWindow(View parentView) {
		super();
		this.mParentView = parentView;
		mLayoutInflater = LayoutInflater.from(mParentView.getContext());
		root = (TabHost) mLayoutInflater.inflate(  
                R.layout.theme_root, null); 
		findViews();
		mPopupWindow = new PopupWindow(root, LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT , true);
		mPopupWindow.setOutsideTouchable(false);
		mPopupWindow.setBackgroundDrawable(new BitmapDrawable());
		mPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
			
			@Override
			public void onDismiss() {
				((Launcher)mParentView.getContext()).setStateThemePopupShowing(false);
			}
		});
	}


	public void showThemeWindow() {
        mPopupWindow.showAtLocation(mParentView, Gravity.CENTER, 0, 0);
        root.setCurrentTab(0);
	}
	
	private void findViews() {
		root.setup();
		tabs = (TabWidget) root.getTabWidget();
		ivw_theme_icon = (ImageView) root.findViewById(R.id.ivw_theme_icon);
		tabcontent = (FrameLayout) root.findViewById(android.R.id.tabcontent);
		grid_themes = (GridView) root.findViewById(R.id.grid_themes);
		grid_translations = (GridView) root.findViewById(R.id.grid_translations);
		
		BaseAdapter themesAdapter = new ThemesAdapter(themesTitleArray , themesIconIdArray);
		BaseAdapter translationsAdapter = new ThemesAdapter(translationsTitleArray, translationsIconIdArray);
		
		grid_themes.setAdapter(themesAdapter);
		grid_translations.setAdapter(translationsAdapter);
		
		
		 TabContentFactory contentFactory = new TabContentFactory() {
		    public View createTabContent(String tag) {
		        if ("Theme".equals(tag)) {
		        	return grid_themes;
		        } else {
		        	return grid_translations;
		        }
            }
	    };
		TextView tab = (TextView) mLayoutInflater.inflate(R.layout.popup_themes_tab, tabs, false);
        tab.setText("Theme");
        tab.setContentDescription("Theme");
        Log.d("aaron", "tabs "+tabs);
        root.addTab(root.newTabSpec("Theme").setIndicator(tab).setContent(contentFactory));
        
        tab = (TextView) mLayoutInflater.inflate(R.layout.popup_themes_tab, tabs, false);
        tab.setText("Transiton");
        tab.setContentDescription("Transiton");
		root.addTab(root.newTabSpec("Transiton").setIndicator(tab).setContent(contentFactory));
		
		grid_translations.setOnItemClickListener(mThemeItemClick);
	}
	
	private OnItemClickListener mThemeItemClick = new OnItemClickListener() {

		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position,
				long id) {
			((Launcher)mParentView.getContext()).setEffectByIndex((int) id);
			mPopupWindow.dismiss();
		}
	};
	
	private class ThemesAdapter extends BaseAdapter {
		
		private String[] mItems;
		private int[] mIconIds;

		public ThemesAdapter(String[] mItems, int[] mIconIds) {
			super();
			this.mItems = mItems;
			this.mIconIds = mIconIds;
		}

		@Override
		public int getCount() {
			return mItems.length;
		}

		@Override
		public Object getItem(int position) {
			return mItems[position];
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			TextView view;
			if (convertView == null) {
				view = new TextView(mParentView.getContext());
				view.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
				view.setGravity(Gravity.CENTER_HORIZONTAL);
				view.setTextColor(Color.BLACK);
			} else {
				view = (TextView) convertView;
			}
			view.setCompoundDrawablesWithIntrinsicBounds(0, mIconIds[position], 0, 0);
			view.setText(mItems[position]);
			return view;
		}
		
	}
	
	
	public class ThemeItem {
		private String title;
		private int icon;
		private ThemesCategory category;
		
		
		public ThemeItem() {
			super();
		}
		
		public ThemeItem(String title, int icon, ThemesCategory category) {
			super();
			this.title = title;
			this.icon = icon;
			this.category = category;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public int getIcon() {
			return icon;
		}
		public void setIcon(int icon) {
			this.icon = icon;
		}
		public ThemesCategory getCategory() {
			return category;
		}
		public void setCategory(ThemesCategory category) {
			this.category = category;
		}
		
		
	}
	
	
	
	static enum ThemesCategory {
		THEMES,
		TRANSLATIONS
	}
	
}
