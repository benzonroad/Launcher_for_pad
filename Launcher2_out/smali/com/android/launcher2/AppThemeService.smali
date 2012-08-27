.class public Lcom/android/launcher2/AppThemeService;
.super Landroid/app/Service;
.source "AppThemeService.java"


# instance fields
.field public mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

.field mhHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/android/launcher2/AppThemeService$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppThemeService$1;-><init>(Lcom/android/launcher2/AppThemeService;)V

    iput-object v0, p0, Lcom/android/launcher2/AppThemeService;->mhHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/launcher2/AppThemeService$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppThemeService$2;-><init>(Lcom/android/launcher2/AppThemeService;)V

    iput-object v0, p0, Lcom/android/launcher2/AppThemeService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private appTheme(Ljava/lang/String;)V
    .locals 2
    .parameter "themeUri"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.tmobile.thememanager.themes/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tmobile/themes/provider/Themes;->changeTheme(Landroid/content/Context;Landroid/net/Uri;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "change_theme"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppThemeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/AppThemeService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppThemeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher2/AppThemeService;->requestFileter()V

    .line 40
    const-string v1, "THEME_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, themeUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppThemeService;->appTheme(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public requestFileter()V
    .locals 3

    .prologue
    .line 45
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tmobile.intent.action.THEME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, filter:Landroid/content/IntentFilter;
    :try_start_0
    const-string v2, "vnd.tmobile.cursor.item/theme"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 49
    const-string v2, "vnd.tmobile.cursor.item/style"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v2, p0, Lcom/android/launcher2/AppThemeService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppThemeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
