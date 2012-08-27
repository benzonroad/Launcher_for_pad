.class Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;
.super Landroid/database/ContentObserver;
.source "Win8WidgetTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Win8WidgetTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 663
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 664
    iput-object p2, p0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->mContext:Landroid/content/Context;

    .line 665
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/launcher2/Win8WidgetTwo;->updateBrightnessIcon(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/launcher2/Win8WidgetTwo;->access$200(Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/launcher2/Win8WidgetTwo;->updateRotation(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/launcher2/Win8WidgetTwo;->access$300(Landroid/content/Context;)V

    .line 687
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 668
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 672
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 674
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 677
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 681
    return-void
.end method
