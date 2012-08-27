.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$RenameFolder;,
        Lcom/android/launcher2/Launcher$ImageAdapter;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mComparator:Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDialog:Landroid/app/Dialog;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDockDivider:Landroid/view/View;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private mGridTheme:Landroid/widget/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mImages:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFirst:Z

.field private mIsShowDialog:Z

.field private mIsShowThemeList:Z

.field private mIsShowTransitonList:Z

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

.field private mQsbDivider:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchButton:Landroid/view/View;

.field private mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field private mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mTexts:[Ljava/lang/String;

.field private mThemeText:Landroid/widget/TextView;

.field private mTmpAddItemCellCoordinates:[I

.field private mTransition:Landroid/widget/ImageView;

.field private mUserPresent:Z

.field private mView:Landroid/view/View;

.field private mVisible:Z

.field private mVoiceButton:Landroid/view/View;

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 220
    sput v1, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    .line 291
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 292
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 293
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 209
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 222
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 237
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    .line 238
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 250
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 254
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 256
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 267
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 275
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 278
    iput v3, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 279
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    .line 280
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    .line 282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 288
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 306
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mTexts:[Ljava/lang/String;

    .line 307
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mImages:[I

    .line 313
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsShowDialog:Z

    .line 314
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsShowTransitonList:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsShowThemeList:Z

    .line 320
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mIsFirst:Z

    .line 326
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 1459
    new-instance v0, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1538
    new-instance v0, Lcom/android/launcher2/Launcher$12;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 3331
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 714
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 716
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mIsShowThemeList:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mIsShowDialog:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Launcher;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Launcher;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$3000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 442
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 443
    new-instance v9, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 462
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 463
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 466
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 468
    .local v4, mcc:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 469
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 471
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 473
    .local v2, localeChanged:Z
    :cond_3
    if-eqz v2, :cond_0

    .line 474
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 475
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 476
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 478
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 480
    sget-object v3, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 481
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher2/Launcher$3;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher$3;->start()V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 752
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 753
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 754
    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z
    .locals 9
    .parameter "args"

    .prologue
    .line 563
    const/4 v8, 0x0

    .line 564
    .local v8, result:Z
    iget v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 591
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 592
    return v8

    .line 566
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 573
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 575
    const/4 v8, 0x1

    .line 576
    goto :goto_0

    .line 578
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 582
    .local v7, appWidgetId:I
    iget-wide v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJI)V

    .line 583
    const/4 v8, 0x1

    .line 584
    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private completeAddAppWidget(IJI)V
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 1400
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1402
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1407
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v6, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-ltz v5, :cond_2

    .line 1411
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    aput v5, v9, v4

    .line 1412
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    aput v5, v9, v4

    .line 1413
    const/4 v4, 0x1

    .line 1423
    :goto_0
    if-nez v4, :cond_5

    .line 1424
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 1427
    new-instance v4, Lcom/android/launcher2/Launcher$10;

    const-string v5, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v5, v1}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher$10;->start()V

    .line 1433
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1457
    :cond_1
    :goto_1
    return-void

    .line 1414
    :cond_2
    if-eqz v6, :cond_4

    .line 1416
    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    aget v7, v10, v7

    const/4 v8, 0x1

    aget v8, v10, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v4

    .line 1418
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1420
    :cond_4
    const/4 v5, 0x0

    aget v5, v10, v5

    const/4 v6, 0x1

    aget v6, v10, v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v4

    goto :goto_0

    .line 1438
    :cond_5
    new-instance v11, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 1439
    const/4 v4, 0x0

    aget v4, v10, v4

    iput v4, v11, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1440
    const/4 v4, 0x1

    aget v4, v10, v4

    iput v4, v11, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1442
    const/4 v4, 0x0

    aget v15, v9, v4

    const/4 v4, 0x1

    aget v16, v9, v4

    const/16 v17, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v10 .. v18}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V

    .line 1445
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_1

    .line 1447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1449
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1450
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v13, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    iget v0, v11, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v19, v0

    iget v0, v11, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v21

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1455
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_1
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 25
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1316
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1317
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v4, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v24, v0

    .line 1318
    .local v24, touchXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 1320
    .local v8, layout:Lcom/android/launcher2/CellLayout;
    const/16 v21, 0x0

    .line 1322
    .local v21, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v22

    .line 1323
    .local v22, info:Lcom/android/launcher2/ShortcutInfo;
    if-nez v22, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 1329
    .local v5, view:Landroid/view/View;
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 1330
    const/4 v4, 0x0

    aput p5, v9, v4

    .line 1331
    const/4 v4, 0x1

    aput p6, v9, v4

    .line 1332
    const/16 v21, 0x1

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1339
    new-instance v10, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v10}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    .line 1340
    .local v10, dragObject:Lcom/android/launcher2/DropTarget$DragObject;
    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x1

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1352
    .end local v10           #dragObject:Lcom/android/launcher2/DropTarget$DragObject;
    :goto_1
    if-nez v21, :cond_5

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 1344
    :cond_2
    if-eqz v24, :cond_4

    .line 1346
    const/4 v4, 0x0

    aget v12, v24, v4

    const/4 v4, 0x1

    aget v13, v24, v4

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v23

    .line 1347
    .local v23, result:[I
    if-eqz v23, :cond_3

    const/16 v21, 0x1

    .line 1348
    :goto_2
    goto :goto_1

    .line 1347
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 1349
    .end local v23           #result:[I
    :cond_4
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v4, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v21

    goto :goto_1

    .line 1357
    :cond_5
    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v11, p0

    move-object/from16 v12, v22

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-static/range {v11 .. v19}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V

    .line 1359
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_0

    .line 1360
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-object v12, v5

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v20}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_0
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3688
    if-eqz p1, :cond_0

    .line 3689
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3690
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3691
    new-instance v1, Lcom/android/launcher2/Launcher$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/Launcher$23;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3702
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3704
    :cond_0
    return-void
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .prologue
    .line 3043
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 3047
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3045
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3043
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 3053
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3055
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3057
    if-eqz v1, :cond_0

    .line 3058
    const-string v2, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3059
    if-eqz v1, :cond_0

    .line 3060
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3061
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3073
    :goto_0
    return-object v0

    .line 3064
    :catch_0
    move-exception v0

    .line 3066
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load toolbar icon; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3073
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3068
    :catch_1
    move-exception v0

    .line 3070
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load toolbar icon from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 547
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    sget v0, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v4, 0x3fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2299
    if-nez p1, :cond_0

    .line 2314
    :goto_0
    return-void

    .line 2300
    :cond_0
    const-string v0, "alpha"

    new-array v1, v8, [F

    const/4 v2, 0x0

    aput v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2301
    const-string v0, "scaleX"

    new-array v1, v8, [F

    aput v4, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2302
    const-string v0, "scaleY"

    new-array v1, v8, [F

    aput v4, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2304
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 2305
    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 2306
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2307
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2308
    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 2311
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v7

    aput-object v3, v0, v8

    const/4 v1, 0x2

    aput-object v4, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2312
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderIcon;)V
    .locals 5
    .parameter

    .prologue
    .line 2265
    iget-object v0, p1, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 2266
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 2270
    iget-boolean v2, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 2271
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2276
    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v0, :cond_2

    .line 2278
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2280
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    .line 2296
    :cond_1
    :goto_0
    return-void

    .line 2284
    :cond_2
    if-eqz v1, :cond_1

    .line 2285
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 2287
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2288
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2292
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0
.end method

.method private hideAppsCustomizeHelper(ZZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2788
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2790
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2792
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2795
    const v0, 0x7f09000c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2796
    const v1, 0x7f09000d

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    .line 2798
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2800
    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2801
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2802
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showHotseat(Z)V

    .line 2803
    if-eqz p1, :cond_2

    .line 2804
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 2805
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 2807
    new-array v1, v10, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2808
    new-instance v0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v0}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2809
    new-instance v0, Lcom/android/launcher2/Launcher$17;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;FFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2815
    new-array v0, v10, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2816
    const v0, 0x7f09000f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2817
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2818
    new-instance v0, Lcom/android/launcher2/Launcher$18;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2823
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 2824
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, v1, v9}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2827
    :cond_1
    new-instance v0, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v0, p0, v2, p0, v1}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2840
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2841
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v7, v2, v11

    aput-object v1, v2, v9

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2842
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2851
    :goto_0
    return-void

    .line 2844
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2845
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 2846
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, v3, v9}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2847
    check-cast v2, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v2, p0, v3, v9}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2849
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_0

    .line 2807
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2815
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/android/launcher2/Cling;
    .locals 4
    .parameter "clingId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"

    .prologue
    const/high16 v3, 0x3f80

    .line 3667
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3668
    .local v0, cling:Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 3669
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher2/Cling;->init(Lcom/android/launcher2/Launcher;[I)V

    .line 3670
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 3671
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3672
    if-eqz p3, :cond_1

    .line 3673
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 3674
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 3675
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x226

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3685
    :cond_0
    :goto_0
    return-object v0

    .line 3682
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    goto :goto_0
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .locals 4
    .parameter "stateOrdinal"

    .prologue
    .line 761
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 762
    .local v1, state:Lcom/android/launcher2/Launcher$State;
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v2

    .line 763
    .local v2, stateValues:[Lcom/android/launcher2/Launcher$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 764
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 765
    aget-object v1, v2, v0

    .line 769
    :cond_0
    return-object v1

    .line 763
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "container"
    .parameter "button"

    .prologue
    .line 3134
    instance-of v2, p1, Lcom/android/launcher2/HolographicLinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 3135
    check-cast v0, Lcom/android/launcher2/HolographicLinearLayout;

    .line 3136
    .local v0, layout:Lcom/android/launcher2/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 3141
    .end local v0           #layout:Lcom/android/launcher2/HolographicLinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 3137
    :cond_1
    instance-of v2, p2, Lcom/android/launcher2/HolographicImageView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 3138
    check-cast v1, Lcom/android/launcher2/HolographicImageView;

    .line 3139
    .local v1, view:Lcom/android/launcher2/HolographicImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_0
.end method

.method private isClingsEnabled()Z
    .locals 1

    .prologue
    .line 3662
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6
    .parameter "configOri"

    .prologue
    const/4 v4, 0x2

    .line 3611
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3612
    .local v0, d:Landroid/view/Display;
    const/4 v2, 0x2

    .line 3613
    .local v2, naturalOri:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3627
    :goto_0
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 3635
    .local v3, oriMap:[I
    const/4 v1, 0x0

    .line 3636
    .local v1, indexOffset:I
    if-ne v2, v4, :cond_0

    .line 3637
    const/4 v1, 0x1

    .line 3639
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 3617
    .end local v1           #indexOffset:I
    .end local v3           #oriMap:[I
    :pswitch_0
    move v2, p1

    .line 3618
    goto :goto_0

    .line 3622
    :pswitch_1
    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 3613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3627
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 2100
    :cond_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 500
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 501
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 502
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 508
    if-eqz v1, :cond_2

    .line 510
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 516
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 511
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 513
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 503
    :catch_1
    move-exception v2

    .line 508
    :goto_1
    if-eqz v0, :cond_0

    .line 510
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 511
    :catch_2
    move-exception v2

    goto :goto_0

    .line 505
    :catch_3
    move-exception v2

    .line 508
    :goto_2
    if-eqz v0, :cond_0

    .line 510
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 511
    :catch_4
    move-exception v2

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 510
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 513
    :cond_1
    :goto_4
    throw v2

    .line 511
    :catch_5
    move-exception v3

    goto :goto_4

    .line 508
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 505
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 503
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2047
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2049
    return-void
.end method

.method private removeCling(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 3706
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3707
    .local v0, cling:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3708
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3709
    .local v1, parent:Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/launcher2/Launcher$24;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$24;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3716
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1866
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1867
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1868
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1869
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1870
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1871
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 778
    if-nez p1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const-string v0, "launcher.state"

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v0

    .line 783
    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 784
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 787
    :cond_2
    const-string v0, "launcher.current_screen"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 788
    if-le v0, v5, :cond_3

    .line 789
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 792
    :cond_3
    const-string v0, "launcher.add_container"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 793
    const-string v2, "launcher.add_screen"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 795
    cmp-long v3, v0, v7

    if-eqz v3, :cond_4

    if-le v2, v5, :cond_4

    .line 796
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide v0, v3, Lcom/android/launcher2/ItemInfo;->container:J

    .line 797
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 798
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_cell_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 799
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_cell_y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 800
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 803
    :cond_4
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 804
    if-eqz v0, :cond_5

    .line 805
    const-string v0, "launcher.rename_folder_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 806
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v3, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 807
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 812
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v0, :cond_7

    .line 813
    const-string v0, "apps_customize_currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_6

    .line 816
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 818
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 823
    :cond_6
    const-string v0, "apps_customize_currentIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 824
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->restorePageForIndex(I)V

    .line 826
    :cond_7
    const-string v0, "is_click_transition_icon"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 827
    const-string v1, "is_click_transition_text"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 828
    const-string v2, "is_click_theme_text"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 829
    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;

    const v3, 0x7f020052

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showTransitionDialog()V

    .line 832
    if-eqz v2, :cond_8

    .line 833
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showDialogComponents()V

    .line 834
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getThemeAndOnclick()V

    goto/16 :goto_0

    .line 835
    :cond_8
    if-eqz v1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showDialogComponents()V

    goto/16 :goto_0
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1514
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1515
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1516
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    .line 1518
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "scaleFactor"

    .prologue
    const/high16 v1, 0x4000

    .line 2605
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 2606
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2607
    return-void
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 553
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 555
    monitor-exit v1

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 848
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 849
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f06001b

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 850
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    .line 851
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 857
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 858
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/Launcher;)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 864
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 865
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/DragController;)V

    .line 866
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 869
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f060024

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SearchDropTargetBar;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    .line 872
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 874
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v2, 0x7f060009

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 876
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 879
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 880
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;

    .line 881
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchButton:Landroid/view/View;

    .line 882
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mVoiceButton:Landroid/view/View;

    .line 925
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    new-instance v2, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 957
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 958
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 959
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 960
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 963
    :cond_2
    return-void
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 2664
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2666
    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2668
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2671
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2672
    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2673
    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v5, v2

    .line 2674
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2675
    const v4, 0x7f090012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2678
    invoke-direct {p0, v2, v5}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2681
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;Z)V

    .line 2683
    if-eqz p1, :cond_2

    .line 2684
    new-array v0, v11, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 2685
    new-instance v0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v0}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2686
    new-instance v0, Lcom/android/launcher2/Launcher$14;

    invoke-direct {v0, p0, v2, v5}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2693
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2694
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2695
    new-array v0, v11, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2696
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2697
    new-instance v1, Lcom/android/launcher2/Launcher$15;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2703
    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2706
    new-instance v0, Lcom/android/launcher2/Launcher$16;

    move-object v1, p0

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2747
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2748
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2751
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_4

    .line 2752
    check-cast v2, Lcom/android/launcher2/LauncherTransitionable;

    .line 2753
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-interface {v2, p0, v0, v6}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    move-result v0

    .line 2756
    :goto_0
    if-nez v0, :cond_1

    .line 2759
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2780
    :cond_1
    :goto_1
    return-void

    .line 2762
    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 2763
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2764
    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleX(F)V

    .line 2765
    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleY(F)V

    .line 2766
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2767
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 2768
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 2769
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, v8, v6}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2770
    check-cast v2, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v2, p0, v8, v6}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2772
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2774
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2775
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2778
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_0

    .line 2684
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2695
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2317
    if-nez p1, :cond_0

    .line 2340
    :goto_0
    return-void

    .line 2318
    :cond_0
    const-string v0, "alpha"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2319
    const-string v0, "scaleX"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2320
    const-string v0, "scaleY"

    new-array v1, v10, [F

    aput v4, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2322
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 2323
    const/4 v1, 0x0

    .line 2324
    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 2325
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2329
    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v9

    aput-object v3, v1, v10

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2330
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2331
    new-instance v2, Lcom/android/launcher2/Launcher$13;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2339
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private startWallpaper()V
    .locals 2

    .prologue
    .line 2023
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2025
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2038
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2039
    return-void
.end method

.method private unbindWorkspaceAndHotseatItems()V
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItems()V

    .line 2110
    :cond_0
    return-void
.end method

.method private updateAppMarketIcon()V
    .locals 7

    .prologue
    const v6, 0x7f060008

    const/4 v5, 0x0

    .line 3218
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.APP_MARKET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3222
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3223
    if-eqz v2, :cond_0

    .line 3224
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v3

    .line 3225
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 3226
    sget-object v1, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v4, 0x7f020034

    invoke-direct {p0, v6, v2, v4}, Lcom/android/launcher2/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    aput-object v2, v1, v3

    .line 3228
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3235
    :goto_0
    return-void

    .line 3232
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3233
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .parameter

    .prologue
    .line 3238
    const v0, 0x7f060008

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3239
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .parameter "buttonId"
    .parameter "d"

    .prologue
    .line 3129
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3130
    .local v0, button:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3131
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 3105
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3107
    .local v0, button:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 3109
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 3112
    if-nez v1, :cond_1

    .line 3113
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3119
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    throw v1

    move-result-object v2

    :goto_1
    return-object v2

    .line 3115
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3119
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 5
    .parameter

    .prologue
    const v1, 0x7f060030

    .line 3174
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3175
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3177
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3178
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3179
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3180
    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .locals 9

    .prologue
    const v8, 0x7f060030

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 3144
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3145
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3146
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3147
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3148
    const v1, 0x7f060032

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3150
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3152
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 3153
    if-eqz v1, :cond_2

    .line 3154
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v5

    .line 3155
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v7, 0x7f02006e

    invoke-direct {p0, v8, v1, v7}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    aput-object v1, v6, v5

    .line 3157
    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3158
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3159
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3160
    invoke-direct {p0, v3, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3161
    const/4 v0, 0x1

    .line 3169
    :goto_0
    return v0

    .line 3164
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3165
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3166
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3167
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3168
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 3169
    goto :goto_0
.end method

.method private updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1521
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1522
    .local v0, autoAdvanceRunning:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1523
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 1524
    if-eqz v0, :cond_3

    .line 1525
    iget-wide v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1526
    .local v1, delay:J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    .line 1536
    .end local v1           #delay:J
    :cond_0
    :goto_2
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_1
    move v0, v4

    .line 1521
    goto :goto_0

    .line 1525
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1528
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1529
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1532
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1533
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter "buttonId"
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 3124
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3125
    .local v0, button:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3126
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 3079
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3080
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3081
    const v0, 0x7f0a001c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3082
    const v0, 0x7f0a001d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 3084
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3086
    if-nez v2, :cond_1

    .line 3087
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3088
    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3089
    if-eqz v0, :cond_0

    .line 3090
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, v1

    .line 3098
    :goto_0
    return-object v0

    .line 3094
    :cond_1
    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3095
    if-eqz v0, :cond_2

    .line 3096
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3098
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f060032

    .line 3208
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3209
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3210
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3211
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3212
    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f060032

    const/16 v6, 0x8

    const/4 v0, 0x0

    .line 3183
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3184
    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3185
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3188
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    .line 3190
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 3191
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v5

    .line 3192
    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v7, 0x7f02002d

    invoke-direct {p0, v8, v4, v7}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    aput-object v4, v6, v5

    .line 3194
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3195
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3196
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3197
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3198
    const/4 v0, 0x1

    .line 3203
    :goto_0
    return v0

    .line 3200
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3201
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3202
    :cond_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 522
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 523
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 524
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 525
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 532
    if-eqz v2, :cond_2

    .line 534
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 540
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 535
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 537
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 526
    :catch_1
    move-exception v3

    .line 532
    :goto_1
    if-eqz v1, :cond_0

    .line 534
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 535
    :catch_2
    move-exception v3

    goto :goto_0

    .line 528
    :catch_3
    move-exception v0

    .line 530
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    if-eqz v1, :cond_0

    .line 534
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 535
    :catch_4
    move-exception v3

    goto :goto_0

    .line 532
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 534
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 537
    :cond_1
    :goto_4
    throw v3

    .line 535
    :catch_5
    move-exception v4

    goto :goto_4

    .line 532
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 528
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 526
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I)V
    .locals 3
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1964
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1965
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide p2, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1966
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput p4, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1967
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1968
    if-eqz p5, :cond_0

    .line 1969
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1970
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1973
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1974
    .local v0, appWidgetId:I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1975
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1976
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1875
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1878
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1879
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1882
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1884
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    .line 1886
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1887
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1888
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1889
    if-eqz p2, :cond_0

    .line 1890
    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    iget-object v3, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
    iget-object v3, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 1896
    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/ClipData;

    .line 1897
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 1898
    :goto_0
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1899
    invoke-virtual {v4, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1900
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1901
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1902
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1903
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1904
    const-string v4, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1906
    if-eqz v3, :cond_1

    .line 1907
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1919
    :cond_0
    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1927
    :goto_2
    return-void

    .line 1908
    :cond_1
    if-eqz v0, :cond_2

    .line 1909
    const-string v1, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1910
    :cond_2
    if-eqz v1, :cond_0

    .line 1911
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1

    .line 1898
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1922
    :cond_4
    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    iget v0, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJI)V

    .line 1925
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    goto :goto_2
.end method

.method addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2002
    new-instance v1, Lcom/android/launcher2/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 2003
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2006
    const/4 v7, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V

    .line 2008
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    const v0, 0x7f03000b

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 2013
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v9

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2015
    return-object v1
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1574
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1579
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method appTheme(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1568
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/AppThemeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1569
    const-string v1, "THEME_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1571
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3536
    if-eqz v1, :cond_0

    .line 3537
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3542
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    new-instance v1, Lcom/android/launcher2/Launcher$21;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 3549
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 14
    .parameter "item"

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3453
    const-wide/16 v12, 0x0

    .line 3457
    .local v12, start:J
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3459
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    iget v10, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3460
    .local v10, appWidgetId:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 3465
    .local v11, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v10, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3467
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v10, v11}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3468
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3470
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3473
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3475
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3481
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3557
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3560
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3561
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 3563
    :cond_0
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3588
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3589
    if-eqz p2, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 3593
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    .line 3594
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 3598
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 3599
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3571
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3573
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3574
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    .line 3578
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 3580
    :cond_1
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3440
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3441
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3442
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3443
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 3405
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3407
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3408
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3409
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher2/ItemInfo;

    .line 3412
    iget-wide v1, v6, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v1, :cond_0

    .line 3408
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3417
    :cond_0
    iget v1, v6, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v1, v6

    .line 3420
    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 3421
    iget-wide v2, v6, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, v6, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v5, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 3425
    :pswitch_1
    const v3, 0x7f03000b

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v6

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v3, p0, v1, v2, v4}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 3428
    iget-wide v2, v6, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, v6, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v5, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 3433
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3434
    return-void

    .line 3417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .locals 1

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 3608
    :cond_0
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 3

    .prologue
    .line 3521
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 3522
    .local v0, searchVisible:Z
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 3523
    .local v1, voiceVisible:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 3524
    return-void
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2369
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2370
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2371
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2372
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 2374
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2377
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 2379
    :cond_1
    return-void
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .locals 4
    .parameter "folder"

    .prologue
    .line 2382
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2384
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2385
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 2386
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2387
    .local v0, fi:Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2389
    .end local v0           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->animateClosed()V

    .line 2390
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1629
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1283
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1284
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    .line 1287
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 1288
    const/4 v0, 0x0

    aput p5, v3, v0

    .line 1289
    const/4 v0, 0x1

    aput p6, v3, v0

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1297
    if-eqz v1, :cond_2

    .line 1298
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/high16 v4, 0x1020

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1300
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1301
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v4, 0x1

    aget v7, v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-wide v3, p2

    move v5, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 1306
    :goto_0
    return-void

    .line 1290
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 1304
    :cond_2
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1254
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/BubbleTextView;

    .line 1255
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1256
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "color"

    aput-object v3, v2, v9

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p3, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1261
    const-string v0, "color"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1263
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/launcher2/BubbleTextView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1271
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, p3, v0}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 1272
    invoke-virtual {v6, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    return-object v6

    .line 1269
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1240
    const v1, 0x7f030002

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3761
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3762
    const-string v1, "cling.allapps.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3763
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3765
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3766
    const-string v1, "cling.folder.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3767
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3757
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3758
    const-string v1, "cling.workspace.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3759
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2053
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2054
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2071
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 2058
    :sswitch_1
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    goto :goto_1

    .line 2064
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2065
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2054
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 2065
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3790
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3791
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    const-string v0, "Debug logs: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3796
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3773
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3782
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3783
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpState()V

    .line 3785
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2923
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 2925
    invoke-direct {p0, v2, v2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2926
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2927
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2929
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2954
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 2955
    const/4 v0, 0x1

    .line 2956
    .local v0, animated:Z
    const/4 v1, 0x1

    .line 2957
    .local v1, springLoaded:Z
    invoke-direct {p0, v4, v4}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2958
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2961
    .end local v0           #animated:Z
    .end local v1           #springLoaded:Z
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZ)V
    .locals 5
    .parameter "successfulDrop"
    .parameter "extendedDelay"

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2951
    :goto_0
    return-void

    .line 2934
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/Launcher$20;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;Z)V

    if-eqz p2, :cond_1

    const/16 v0, 0x258

    :goto_1
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3489
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3491
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 3492
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3495
    :cond_0
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3498
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 3499
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3500
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3503
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 3507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3508
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    .line 3507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3510
    :cond_3
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3514
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 3516
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3517
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 2447
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2454
    :goto_0
    return-object v0

    .line 2451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2454
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDragController()Lcom/android/launcher2/DragController;
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 1383
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 1379
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II[I)[I
    .locals 6
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "spanXY"

    .prologue
    const/4 v5, 0x0

    .line 1366
    if-nez p4, :cond_0

    .line 1367
    const/4 v3, 0x2

    new-array p4, v3, [I

    .line 1370
    :cond_0
    invoke-static {p0, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1373
    .local v0, padding:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 1374
    .local v2, requiredWidth:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 1375
    .local v1, requiredHeight:I
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method getSpanForWidget(Lcom/android/launcher2/PendingAddWidgetInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 1387
    iget-object v0, p1, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getThemeAndOnclick()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1017
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mIsShowTransitonList:Z

    .line 1018
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mIsShowThemeList:Z

    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mThemeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.intent.action.SET_THEME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1033
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tmobile.thememanager.themes/themes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "theme_package"

    aput-object v4, v2, v6

    const-string v4, "theme_id"

    aput-object v4, v2, v5

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "preview_uri"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1036
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1037
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    const-string v0, "theme_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1039
    const-string v0, "theme_package"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1040
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v7, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    iget v5, v5, Landroid/content/pm/ThemeInfo;->nameId:I

    .line 1043
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1046
    :goto_1
    const-string v5, "preview_uri"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1050
    const-string v9, "THEME_IMAGE"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string v5, "THEME_NAME"

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string v0, "THEME_URI"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1055
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1057
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v1, v6

    .line 1059
    :goto_2
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 1060
    aget-object v0, v4, v1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1061
    if-eqz v0, :cond_1

    .line 1062
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1066
    :cond_2
    new-instance v0, Lcom/android/launcher2/Launcher$ImageAdapter;

    invoke-direct {v0, p0, p0, v3}, Lcom/android/launcher2/Launcher$ImageAdapter;-><init>(Lcom/android/launcher2/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1067
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1069
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;

    new-instance v1, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1084
    return-void

    .line 1044
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method hideDockDivider()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2964
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2965
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2968
    :cond_0
    return-void
.end method

.method public initDialogContentListeners()V
    .locals 3

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mThemeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 984
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 993
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1001
    return-void
.end method

.method public isAllAppsCustomizeOpen()Z
    .locals 2

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderClingVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3750
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3751
    if-eqz v0, :cond_1

    .line 3752
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3754
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3752
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3754
    goto :goto_0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1862
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 2992
    return-void
.end method

.method public lockScreenOrientationOnLargeUI()V
    .locals 1

    .prologue
    .line 3643
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3644
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3647
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, delayExitSpringLoadedMode:Z
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 605
    if-ne p2, v8, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 606
    new-instance v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 607
    .local v1, args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 608
    iput-object p3, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 609
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    .line 610
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 611
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 612
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 615
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 616
    sget-object v4, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    .line 633
    return-void

    .line 618
    .restart local v1       #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    move-result v2

    goto :goto_0

    .line 620
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_3
    const/16 v4, 0x9

    if-eq p1, v4, :cond_4

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    :cond_4
    if-nez p2, :cond_0

    .line 622
    if-eqz p3, :cond_0

    .line 624
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 625
    .local v0, appWidgetId:I
    if-eq v0, v8, :cond_0

    .line 626
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1483
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1486
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1487
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1489
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1491
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1492
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1493
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 2076
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v2, :cond_0

    .line 2077
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2091
    :goto_0
    return-void

    .line 2078
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2079
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2080
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2081
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 2083
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 2086
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2089
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 2120
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2154
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2124
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2129
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 2131
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2132
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 2133
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2134
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2136
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 2138
    .local v3, success:Z
    if-eqz v3, :cond_0

    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_0

    .line 2139
    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 2140
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    .line 2142
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #success:Z
    .restart local p1
    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_3

    .line 2143
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 2144
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2145
    .local v0, fi:Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0

    .line 2147
    .end local v0           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 2148
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v5, v6, :cond_4

    .line 2149
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 2151
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 2195
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2206
    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2169
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2171
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 2172
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2183
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2184
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 350
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 353
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 354
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 355
    new-instance v6, Lcom/android/launcher2/DragController;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 358
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 359
    new-instance v6, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v7, 0x400

    invoke-direct {v6, p0, v7}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 360
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mTexts:[Ljava/lang/String;

    .line 367
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mImages:[I

    .line 373
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 374
    const v6, 0x7f03000e

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showFirstRunWorkspaceCling()V

    .line 378
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 381
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    .line 382
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 383
    new-instance v6, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mComparator:Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    .line 384
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 385
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 388
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v6, :cond_0

    .line 389
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 396
    :cond_0
    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v6, :cond_1

    .line 397
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v6, p0, v8}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherModel;->isAllAppsLoaded()Z

    move-result v6

    if-nez v6, :cond_2

    .line 401
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 402
    .local v1, appsCustomizeContentParent:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030005

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 406
    .end local v1           #appsCustomizeContentParent:Landroid/view/ViewGroup;
    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 407
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 409
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, searchVisible:Z
    const/4 v5, 0x0

    .line 415
    .local v5, voiceVisible:Z
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v2

    .line 416
    .local v2, coi:I
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-nez v6, :cond_4

    .line 418
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 419
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v4

    .line 420
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v5

    .line 422
    :cond_4
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    .line 423
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 424
    const/4 v4, 0x1

    .line 426
    :cond_5
    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_6

    .line 427
    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 428
    const/4 v5, 0x1

    .line 430
    :cond_6
    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_7

    .line 431
    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 433
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 436
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 437
    :cond_8
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 439
    :cond_9
    return-void

    .line 367
    nop

    :array_0
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2464
    packed-switch p1, :pswitch_data_0

    .line 2471
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2466
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2468
    :pswitch_1
    new-instance v0, Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$RenameFolder;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x1080

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1792
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1826
    :goto_0
    return v0

    .line 1796
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1798
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1801
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1802
    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1804
    const v4, 0x7f0c0031

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1805
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1806
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1809
    const/4 v6, 0x2

    const v7, 0x7f0c002c

    invoke-interface {p1, v1, v6, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x108003f

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x57

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1812
    const/4 v6, 0x3

    const v7, 0x7f0c002b

    invoke-interface {p1, v0, v6, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x1080042

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v6, 0x4d

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1816
    const/4 v2, 0x4

    const v6, 0x7f0c002f

    invoke-interface {p1, v0, v2, v0, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v6, 0x1080049

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1820
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1821
    const/4 v2, 0x5

    const v3, 0x7f0c0030

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080040

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x48

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_1
    move v0, v1

    .line 1826
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1717
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1720
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1722
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1725
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 1726
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1727
    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    .line 1730
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1736
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1738
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1741
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindWorkspaceAndHotseatItems()V

    .line 1743
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1744
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1746
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1747
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1748
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1749
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1751
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1752
    return-void

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1497
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1498
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1499
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1501
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1503
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1506
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 721
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 722
    .local v3, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 723
    .local v1, handled:Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 724
    .local v2, isKeyNotWhitespace:Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 725
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 727
    .local v0, gotKey:Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v1

    .line 743
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_0
    :goto_1
    return v1

    .line 723
    .end local v2           #isKeyNotWhitespace:Z
    .restart local v1       #handled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 739
    .restart local v2       #isKeyNotWhitespace:Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 740
    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2393
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v5, v6, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return v3

    .line 2397
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2401
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_2

    .line 2402
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 2405
    .restart local p1
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2408
    .local v2, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v2, :cond_3

    move v3, v4

    .line 2409
    goto :goto_0

    .line 2414
    :cond_3
    iget-object v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2415
    .local v1, itemUnderLongClick:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v0, v4

    .line 2416
    .local v0, allowLongPress:Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2417
    if-nez v1, :cond_7

    .line 2419
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2421
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    :cond_5
    :goto_2
    move v3, v4

    .line 2429
    goto :goto_0

    .end local v0           #allowLongPress:Z
    :cond_6
    move v0, v3

    .line 2415
    goto :goto_1

    .line 2423
    .restart local v0       #allowLongPress:Z
    :cond_7
    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_5

    .line 2425
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v4, 0x40

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1633
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1636
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1638
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 1640
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_3

    move v1, v0

    .line 1643
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    .line 1645
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1646
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v5, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 1648
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1652
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 1653
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 1656
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1657
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1659
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1663
    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->reset()V

    .line 1667
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 1640
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1844
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1850
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1846
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    .line 1847
    const/4 v0, 0x1

    goto :goto_0

    .line 1844
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 679
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 680
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2476
    packed-switch p1, :pswitch_data_0

    .line 2488
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2480
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_0

    .line 2481
    const v0, 0x7f06002f

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2482
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2483
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2484
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1831
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1833
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1839
    :goto_0
    return v1

    .line 1836
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 1837
    .local v0, allAppsVisible:Z
    :goto_1
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v1, v2

    .line 1839
    goto :goto_0

    .end local v0           #allAppsVisible:Z
    :cond_2
    move v0, v1

    .line 1836
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1673
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 638
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 639
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v2, :cond_1

    .line 640
    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 641
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, p0, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 642
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 643
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v2, :cond_2

    .line 646
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 650
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 651
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->onResume()V

    .line 652
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v2, :cond_3

    .line 653
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 654
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 659
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    new-instance v2, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 672
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    .end local v1           #workspace:Lcom/android/launcher2/Workspace;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 673
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 686
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->surrender()V

    .line 689
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 1677
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1678
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1680
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1683
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1685
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_0

    .line 1687
    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1688
    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1690
    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    .line 1694
    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1695
    const-string v0, "launcher.rename_folder_id"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v0, :cond_3

    .line 1700
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_2

    .line 1702
    const-string v1, "apps_customize_currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 1705
    const-string v1, "apps_customize_currentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1707
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsShowDialog:Z

    if-eqz v0, :cond_4

    .line 1708
    const-string v0, "is_click_transition_icon"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1709
    const-string v0, "is_click_transition_text"

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsShowTransitonList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1710
    const-string v0, "is_click_theme_text"

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsShowThemeList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    :cond_4
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1855
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1857
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 1858
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2160
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2199
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2200
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 2855
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2856
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTrimMemory()V

    .line 2859
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1509
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1510
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1511
    return-void

    .line 1509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher2/FolderIcon;)V
    .locals 4
    .parameter

    .prologue
    .line 2350
    iget-object v0, p1, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 2351
    iget-object v1, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 2353
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2354
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2358
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 2360
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2365
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 2366
    return-void

    .line 2362
    :cond_0
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening folder ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") which already has a parent ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1980
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1981
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1983
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1985
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1988
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1989
    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f0c001d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1990
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1994
    :goto_0
    return-void

    .line 1992
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1939
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1940
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1941
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1942
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1944
    if-eqz p5, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    aget v1, p5, v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1946
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x1

    aget v1, p5, v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1949
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1951
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 1952
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1591
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1593
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2019
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1588
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3357
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3358
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 3362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllApps(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 2902
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2920
    :goto_0
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2905
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->requestFocus()Z

    .line 2908
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2911
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2914
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2915
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2916
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2919
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public showDialogComponents()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mView:Landroid/view/View;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mThemeText:Landroid/widget/TextView;

    .line 1100
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mView:Landroid/view/View;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;

    .line 1110
    return-void
.end method

.method showDockDivider(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 2971
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2972
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2973
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2974
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2976
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2977
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2980
    :cond_0
    if-eqz p1, :cond_1

    .line 2981
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2982
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2984
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2985
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2988
    :cond_1
    return-void
.end method

.method public showFirstRunAllAppsCling([I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f06000c

    const/4 v2, 0x0

    .line 3729
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3731
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cling.allapps.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3732
    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3736
    :goto_0
    return-void

    .line 3734
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher2/Cling;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f060027

    const/4 v3, 0x0

    .line 3739
    const-string v1, "com.android.launcher2.prefs"

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3742
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cling.folder.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3743
    const/4 v1, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 3747
    :goto_0
    return-object v0

    .line 3745
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 4

    .prologue
    const v3, 0x7f060026

    const/4 v2, 0x0

    .line 3719
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3721
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cling.workspace.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3722
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v2, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3726
    :goto_0
    return-void

    .line 3724
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    const/high16 v2, 0x3f80

    .line 3006
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3007
    if-eqz p1, :cond_1

    .line 3008
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 3009
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3014
    .end local v0           #duration:I
    :cond_0
    :goto_0
    return-void

    .line 3011
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 2

    .prologue
    .line 1596
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1597
    return-void
.end method

.method public showTransitionDialog()V
    .locals 3

    .prologue
    .line 1087
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0d0015

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    .line 1088
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1089
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mView:Landroid/view/View;

    .line 1090
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1091
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsShowDialog:Z

    .line 1094
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showDialogComponents()V

    .line 1095
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initDialogContentListeners()V

    .line 1096
    return-void
.end method

.method showWorkspace(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2862
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2863
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2872
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V

    .line 2873
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v2, v3, :cond_1

    .line 2874
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2875
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2878
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2880
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDockDivider(Z)V

    .line 2883
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2884
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2888
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->flashScrollingIndicator(Z)V

    .line 2891
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2894
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2895
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2898
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2899
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1760
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1761
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1762
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0006

    const/4 v1, 0x0

    .line 2253
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2262
    :goto_0
    return-void

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2256
    :catch_1
    move-exception v0

    .line 2257
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2258
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0006

    const/4 v0, 0x0

    .line 2234
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2236
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2237
    const/4 v0, 0x1

    .line 2248
    :goto_0
    return v0

    .line 2238
    :catch_0
    move-exception v1

    .line 2239
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2240
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2241
    :catch_1
    move-exception v1

    .line 2242
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2243
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter

    .prologue
    .line 2209
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2212
    const/high16 v0, 0x1080

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2213
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2214
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 2217
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2220
    const v0, 0x7f0c0041

    .line 2221
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2231
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2224
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2227
    const/high16 v0, 0x1080

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2229
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 3384
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3386
    .local v3, workspace:Lcom/android/launcher2/Workspace;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->clearDropTargets()V

    .line 3387
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3388
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3390
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3391
    .local v2, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 3388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3393
    .end local v2           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3394
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_1

    .line 3395
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 3397
    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1772
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1774
    if-nez p1, :cond_1

    .line 1776
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    .line 1778
    :goto_0
    if-nez p3, :cond_0

    .line 1779
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1780
    const-string v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1784
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1786
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 1788
    return-void

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public unlockScreenOrientationOnLargeUI()V
    .locals 4

    .prologue
    .line 3649
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$22;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$22;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3656
    :cond_0
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x10

    .line 2610
    if-eqz p1, :cond_1

    move v0, v1

    .line 2611
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v1

    .line 2613
    if-eq v0, v2, :cond_0

    .line 2614
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2616
    :cond_0
    return-void

    .line 2610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
