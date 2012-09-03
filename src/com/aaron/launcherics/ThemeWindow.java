package com.aaron.launcherics;

import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

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
	
	};
	
	private int[] themesIconIdArray = {
			
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
		mPopupWindow = new PopupWindow(root, LayoutParams.WRAP_CONTENT,  
	                LayoutParams.WRAP_CONTENT); 
	}


	public void showThemeWindow() {
        mPopupWindow.showAtLocation(mParentView, Gravity.CENTER, 0, 0);
        
	}
	
	private void findViews() {
		tabs = (TabWidget) root.findViewById(android.R.id.tabs);
		ivw_theme_icon = (ImageView) root.findViewById(R.id.ivw_theme_icon);
		tabcontent = (FrameLayout) root.findViewById(android.R.id.tabcontent);
		grid_themes = (GridView) root.findViewById(R.id.grid_themes);
		grid_translations = (GridView) root.findViewById(R.id.grid_translations);
		
		//BaseAdapter themesAdapter = new ThemesAdapter(themesTitleArray , themesIconIdArray);
		BaseAdapter translationsAdapter = new ThemesAdapter(translationsTitleArray, translationsIconIdArray);
		
		//grid_themes.setAdapter(themesAdapter);
		grid_translations.setAdapter(translationsAdapter);
		TextView tab = (TextView) mLayoutInflater.inflate(R.layout.popup_themes_tab, tabs, false);
        tab.setText("Theme");
        tab.setContentDescription("Theme");
        Log.d("aaron", "root "+root);
        Log.d("aaron", "tab "+root.newTabSpec("Theme").setIndicator(tab).setContent(R.id.grid_themes));
        root.addTab(root.newTabSpec("Theme").setIndicator(tab).setContent(R.id.grid_themes));
        tab = (TextView) mLayoutInflater.inflate(R.layout.popup_themes_tab, tabs, false);
        tab.setText("Transiton");
        tab.setContentDescription("Transiton");
		root.addTab(root.newTabSpec("Transiton").setIndicator("Transiton").setContent(R.id.grid_translations));
	}
	
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
