.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static sIsFlashplayerVisible:Z

.field private static sIsScreenLarge:Z

.field private static sScreenDensity:F


# instance fields
.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field public mIconCache:Lcom/android/launcher2/IconCache;

.field mLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field public mModel:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 95
    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method


# virtual methods
.method getIconCache()Lcom/android/launcher2/IconCache;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v3, 0xf

    .line 46
    .local v2, screenSize:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    .line 50
    new-instance v3, Lcom/android/launcher2/IconCache;

    invoke-direct {v3, p0}, Lcom/android/launcher2/IconCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 51
    new-instance v3, Lcom/android/launcher2/LauncherModel;

    iget-object v5, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v3, p0, v5}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V

    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v3, "com.letou.launcher.RELOAD"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsFlashplayerVisible:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    return-void

    .line 46
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method
