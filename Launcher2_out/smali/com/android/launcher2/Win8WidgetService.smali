.class public Lcom/android/launcher2/Win8WidgetService;
.super Landroid/app/Service;
.source "Win8WidgetService.java"


# static fields
.field public static mTimeFormat:Ljava/lang/String;


# instance fields
.field private br:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

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

.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    const-string v1, "Format"

    sput-object v1, Lcom/android/launcher2/Win8WidgetService;->mTimeFormat:Ljava/lang/String;

    .line 46
    new-instance v1, Lcom/android/launcher2/Win8WidgetService$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Win8WidgetService$1;-><init>(Lcom/android/launcher2/Win8WidgetService;)V

    iput-object v1, p0, Lcom/android/launcher2/Win8WidgetService;->br:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, intf:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetService;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Win8WidgetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetService;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Win8WidgetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 39
    return-void
.end method
