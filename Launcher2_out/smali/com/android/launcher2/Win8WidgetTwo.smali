.class public Lcom/android/launcher2/Win8WidgetTwo;
.super Landroid/appwidget/AppWidgetProvider;
.source "Win8WidgetTwo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;
    }
.end annotation


# static fields
.field private static LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

.field private static MINIMUM_BACKLIGHT:I

.field private static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private static mCal:Ljava/util/Calendar;

.field private static mDf:Ljava/text/SimpleDateFormat;

.field private static mIsEnable:Z

.field private static mView2:Landroid/widget/RemoteViews;

.field private static mWeek:[Ljava/lang/String;


# instance fields
.field private mRe:Landroid/content/res/Resources;

.field private sp:Landroid/content/SharedPreferences;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Win8WidgetTwo;->mIsEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 658
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Win8WidgetTwo;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/Win8WidgetTwo;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/launcher2/Win8WidgetTwo;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/launcher2/Win8WidgetTwo;->updateBrightnessIcon(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/launcher2/Win8WidgetTwo;->updateRotation(Landroid/content/Context;)V

    return-void
.end method

.method private changeBluetoothState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 499
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 500
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 501
    const-string v1, "MyIconWidget"

    const-string v2, "devices not supoort bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    new-instance v1, Lcom/android/launcher2/Win8WidgetTwo$4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Win8WidgetTwo$4;-><init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Win8WidgetTwo$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private changeBrightness(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 374
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 376
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 378
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 382
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 390
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 391
    sget v0, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I

    .line 392
    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    :goto_1
    if-nez v1, :cond_1

    .line 413
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 414
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 393
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    sget v5, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I

    add-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_3

    .line 394
    sget v5, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I

    add-int/lit16 v5, v5, 0xff

    div-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 395
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 396
    const/16 v0, 0xff

    goto :goto_0

    .line 398
    :cond_4
    const/4 v1, 0x1

    .line 399
    sget v0, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 410
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 417
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 418
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "MyIconWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 419
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 420
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "MyIconWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private changeRotation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    new-instance v0, Lcom/android/launcher2/Win8WidgetTwo$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Win8WidgetTwo$2;-><init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Win8WidgetTwo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    return-void
.end method

.method private changeVoie(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 303
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 304
    .local v0, am:Landroid/media/AudioManager;
    new-instance v1, Lcom/android/launcher2/Win8WidgetTwo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher2/Win8WidgetTwo$1;-><init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/content/Context;Landroid/media/AudioManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Win8WidgetTwo$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    .line 120
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    invoke-virtual {v0}, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->startObserving()V

    .line 122
    :cond_0
    return-void
.end method

.method private static getAutoRotation(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 346
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 348
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 356
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return v0

    .line 354
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 427
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 429
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 436
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v0

    .line 434
    :catch_0
    move-exception v2

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refurbishTime(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Win8WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    return-void
.end method

.method private setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V
    .locals 16
    .parameter "context"
    .parameter "view"
    .parameter "appWidgetManager"

    .prologue
    .line 159
    const v10, 0x7f06005b

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.settings.SETTINGS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    const v10, 0x7f06005c

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    const-string v14, "http://www.google.com"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    const v10, 0x7f060062

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    const v10, 0x7f060061

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    const v10, 0x7f060067

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.softwinner.explore"

    const-string v15, "com.softwinner.explore.Main"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 179
    const v10, 0x7f060059

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.android.calendar"

    const-string v15, "com.android.calendar.AllInOneActivity"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    const v10, 0x7f060060

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.android.calculator2"

    const-string v15, "com.android.calculator2.Calculator"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 187
    const v10, 0x7f06005a

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 191
    const v10, 0x7f06005e

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.android.gallery3d"

    const-string v15, "com.android.gallery3d.app.Gallery"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 195
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Win8WidgetTwo;->setTime(Landroid/content/Context;)V

    .line 196
    const v10, 0x7f060064

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.android.deskclock"

    const-string v15, "com.android.deskclock.DeskClock"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 200
    new-instance v8, Landroid/content/Intent;

    const-string v10, "wf"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v8, changeWifi:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 202
    .local v9, changeWifiPendingIntent:Landroid/app/PendingIntent;
    const v10, 0x7f060051

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 205
    new-instance v6, Landroid/content/Intent;

    const-string v10, "voic"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v6, changeVoic:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 207
    .local v7, changeVoicPendingIntent:Landroid/app/PendingIntent;
    const v10, 0x7f060056

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 210
    new-instance v4, Landroid/content/Intent;

    const-string v10, "rota"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, changeRotation:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 212
    .local v5, changeRotationPendingIntent:Landroid/app/PendingIntent;
    const v10, 0x7f060053

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-string v10, "bright"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, changeBrightness:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 217
    .local v3, changeBrightnessPendingIntent:Landroid/app/PendingIntent;
    const v10, 0x7f06004e

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 219
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 220
    return-void
.end method

.method private setTime(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 575
    sget-boolean v0, Lcom/android/launcher2/Win8WidgetTwo;->mIsEnable:Z

    if-eqz v0, :cond_1

    .line 576
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030021

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 579
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mCal:Ljava/util/Calendar;

    .line 580
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f060063

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mDf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 581
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f060057

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher2/Win8WidgetTwo;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Win8WidgetTwo;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Win8WidgetTwo;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 582
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f060058

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mWeek:[Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Win8WidgetTwo;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 584
    :cond_1
    return-void
.end method

.method private turnOrOffWifiIcon(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "on"

    .prologue
    const v4, 0x7f06006d

    const v3, 0x7f060050

    .line 560
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030021

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 562
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 564
    :cond_0
    if-eqz p2, :cond_1

    .line 565
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 566
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020078

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 571
    :goto_0
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 572
    return-void

    .line 568
    :cond_1
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020013

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 569
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020076

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private static updateBrightnessIcon(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f06004d

    const/16 v5, 0x66

    const v4, 0x7f06004c

    .line 532
    invoke-static {p0}, Lcom/android/launcher2/Win8WidgetTwo;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 533
    sget-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 534
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030021

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 535
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 538
    :cond_0
    const/16 v1, 0xcc

    if-le v0, v1, :cond_1

    .line 539
    sget-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v2, 0x7f02000b

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 548
    :goto_0
    if-le v0, v5, :cond_3

    .line 549
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020078

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 555
    :goto_1
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/launcher2/Win8WidgetTwo;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 557
    return-void

    .line 541
    :cond_1
    if-le v0, v5, :cond_2

    .line 542
    sget-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v2, 0x7f02007e

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 545
    :cond_2
    sget-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v2, 0x7f020015

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 552
    :cond_3
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020076

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private static updateRotation(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f060052

    .line 360
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030021

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 362
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 364
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/Win8WidgetTwo;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020078

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 369
    :goto_0
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/launcher2/Win8WidgetTwo;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 370
    return-void

    .line 367
    :cond_1
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v1, 0x7f020076

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private updateVolue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f06006e

    const v6, 0x7f060055

    const/4 v5, 0x3

    .line 279
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 280
    .local v0, am:Landroid/media/AudioManager;
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030021

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 282
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 285
    :cond_0
    if-eqz p2, :cond_2

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, whichStream:I
    :goto_0
    if-ne v1, v5, :cond_1

    .line 291
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 292
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v3, 0x7f02007d

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 293
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v3, 0x7f020076

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 299
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 300
    return-void

    .line 288
    .end local v1           #whichStream:I
    :cond_2
    const/4 v1, 0x3

    .restart local v1       #whichStream:I
    goto :goto_0

    .line 295
    :cond_3
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v3, 0x7f02009f

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 296
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    const v3, 0x7f020078

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 519
    if-nez p2, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 524
    .local v0, wifiState:I
    :goto_0
    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 525
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/Win8WidgetTwo;->turnOrOffWifiIcon(Landroid/content/Context;Z)V

    .line 529
    :goto_1
    return-void

    .line 522
    .end local v0           #wifiState:I
    :cond_1
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/Win8WidgetTwo;->wifiStateToFiveState(I)I

    move-result v0

    .restart local v0       #wifiState:I
    goto :goto_0

    .line 527
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/Win8WidgetTwo;->turnOrOffWifiIcon(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 587
    packed-switch p0, :pswitch_data_0

    .line 597
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 589
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 593
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 595
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 602
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 603
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/Win8WidgetTwo;->wifiStateToFiveState(I)I

    move-result v1

    .line 606
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 616
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 612
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 232
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    invoke-virtual {v0}, Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;->stopObserving()V

    .line 234
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->LauncherObserver:Lcom/android/launcher2/Win8WidgetTwo$LauncherObserver;

    .line 236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Win8WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Win8WidgetTwo;->mIsEnable:Z

    .line 239
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Win8WidgetTwo;->mIsEnable:Z

    .line 227
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030021

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 247
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 248
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Win8WidgetTwo;->setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V

    .line 250
    :cond_0
    const-string v0, "android.intent.action.TIME_SET"

    sget-object v1, Lcom/android/launcher2/Win8WidgetService;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mDf:Ljava/text/SimpleDateFormat;

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->setTime(Landroid/content/Context;)V

    .line 254
    sget-object v0, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 276
    :cond_2
    :goto_1
    return-void

    .line 251
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->toggleState(Landroid/content/Context;)V

    goto :goto_1

    .line 257
    :cond_5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8WidgetTwo;->updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8WidgetTwo;->changeBluetoothState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 261
    :cond_7
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    const-string v0, "sync"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    const-string v0, "bright"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8WidgetTwo;->changeBrightness(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 269
    :cond_8
    const-string v0, "rota"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8WidgetTwo;->changeRotation(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 271
    :cond_9
    const-string v0, "voic"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 272
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->changeVoie(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 273
    :cond_a
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8WidgetTwo;->updateVolue(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 128
    array-length v1, p3

    .line 129
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetIds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/Win8WidgetTwo;->MINIMUM_BACKLIGHT:I

    .line 133
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030021

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    .line 134
    sput-object p2, Lcom/android/launcher2/Win8WidgetTwo;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 135
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 136
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    sput-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mDf:Ljava/text/SimpleDateFormat;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo;->mRe:Landroid/content/res/Resources;

    .line 138
    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo;->mRe:Landroid/content/res/Resources;

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mWeek:[Ljava/lang/String;

    .line 140
    sget-object v2, Lcom/android/launcher2/Win8WidgetTwo;->mView2:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/launcher2/Win8WidgetTwo;->setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->refurbishTime(Landroid/content/Context;)V

    .line 142
    invoke-static {p1}, Lcom/android/launcher2/Win8WidgetTwo;->updateBrightnessIcon(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/Win8WidgetTwo;->updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    invoke-static {p1}, Lcom/android/launcher2/Win8WidgetTwo;->updateRotation(Landroid/content/Context;)V

    .line 147
    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/Win8WidgetTwo;->updateVolue(Landroid/content/Context;Landroid/content/Intent;)V

    .line 149
    invoke-static {p1}, Lcom/android/launcher2/Win8WidgetTwo;->checkObserver(Landroid/content/Context;)V

    .line 150
    return-void

    .line 136
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 636
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 638
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 639
    const-string v1, "MyIconWidget"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 643
    :cond_0
    new-instance v1, Lcom/android/launcher2/Win8WidgetTwo$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher2/Win8WidgetTwo$5;-><init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Win8WidgetTwo$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 622
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 623
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 633
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/Win8WidgetTwo;->requestStateChange(Landroid/content/Context;Z)V

    .line 634
    return-void

    .line 625
    :pswitch_0
    const/4 v1, 0x0

    .line 626
    goto :goto_0

    .line 628
    :pswitch_1
    const/4 v1, 0x1

    .line 629
    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
