.class public Lcom/android/launcher2/Win8Widget;
.super Landroid/appwidget/AppWidgetProvider;
.source "Win8Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Win8Widget$LauncherObserver;
    }
.end annotation


# static fields
.field private static LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

.field private static MINIMUM_BACKLIGHT:I

.field private static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private static mAutoRotation:Z

.field private static mCal:Ljava/util/Calendar;

.field private static mDf:Ljava/text/SimpleDateFormat;

.field private static mIsEnabled:Z

.field private static mView:Landroid/widget/RemoteViews;

.field private static mWeek:[Ljava/lang/String;


# instance fields
.field private mRe:Landroid/content/res/Resources;

.field private sp:Landroid/content/SharedPreferences;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Win8Widget;->mIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 709
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/launcher2/Win8Widget;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Win8Widget;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/Win8Widget;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Win8Widget;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/Win8Widget;->sp:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/launcher2/Win8Widget;->updateBrightnessIcon(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/launcher2/Win8Widget;->updateRotation(Landroid/content/Context;)V

    return-void
.end method

.method private changeBrightness(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 355
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 357
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 359
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 363
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 371
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 372
    sget v0, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I

    .line 373
    const/4 v1, 0x0

    .line 383
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    :goto_1
    if-nez v1, :cond_1

    .line 394
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 395
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 374
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    sget v5, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I

    add-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_3

    .line 375
    sget v5, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I

    add-int/lit16 v5, v5, 0xff

    div-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 376
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 377
    const/16 v0, 0xff

    goto :goto_0

    .line 379
    :cond_4
    const/4 v1, 0x1

    .line 380
    sget v0, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 391
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 398
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 399
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

    .line 400
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 401
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
    .line 492
    new-instance v0, Lcom/android/launcher2/Win8Widget$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Win8Widget$2;-><init>(Lcom/android/launcher2/Win8Widget;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Win8Widget$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 509
    return-void
.end method

.method private changeVoie(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 547
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 548
    .local v0, am:Landroid/media/AudioManager;
    new-instance v1, Lcom/android/launcher2/Win8Widget$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher2/Win8Widget$4;-><init>(Lcom/android/launcher2/Win8Widget;Landroid/content/Context;Landroid/media/AudioManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Win8Widget$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    sget-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/launcher2/Win8Widget$LauncherObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Win8Widget$LauncherObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    .line 147
    sget-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    invoke-virtual {v0}, Lcom/android/launcher2/Win8Widget$LauncherObserver;->startObserving()V

    .line 149
    :cond_0
    return-void
.end method

.method private static getAutoRotation(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 422
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 424
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/launcher2/Win8Widget;->mAutoRotation:Z

    .line 428
    sget-boolean v1, Lcom/android/launcher2/Win8Widget;->mAutoRotation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    return v1

    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    move v2, v1

    .line 425
    goto :goto_0

    .line 430
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 408
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 410
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 417
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v0

    .line 415
    :catch_0
    move-exception v2

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refurbishTime(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Win8WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    return-void
.end method

.method private setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V
    .locals 19
    .parameter "context"
    .parameter "view"
    .parameter "appWidgetManager"

    .prologue
    .line 193
    const v13, 0x7f06005b

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.settings.SETTINGS"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 197
    const v13, 0x7f06005c

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    const-string v17, "http://www.google.com"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 202
    const v13, 0x7f060062

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 206
    new-instance v11, Landroid/content/ComponentName;

    const-string v13, "com.google.android.gm"

    const-string v14, "com.google.android.gm.ConversationListActivityGmail"

    invoke-direct {v11, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v11, cn2:Landroid/content/ComponentName;
    const v13, 0x7f060065

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 210
    const v13, 0x7f060061

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 214
    const v13, 0x7f060066

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.quicksearchbox"

    const-string v18, "com.android.quicksearchbox.SearchActivity"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 218
    const v13, 0x7f060067

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.softwinner.explore"

    const-string v18, "com.softwinner.explore.Main"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    const v13, 0x7f06005f

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.vending"

    const-string v18, "com.android.vending.AssetBrowserActivity"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    const v13, 0x7f060059

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.calendar"

    const-string v18, "com.android.calendar.AllInOneActivity"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 230
    const v13, 0x7f060060

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.calculator2"

    const-string v18, "com.android.calculator2.Calculator"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    const v13, 0x7f06005a

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MUSIC_PLAYER"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 238
    const v13, 0x7f06005e

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.gallery3d"

    const-string v18, "com.android.gallery3d.app.Gallery"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 242
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Win8Widget;->setTime(Landroid/content/Context;)V

    .line 243
    const v13, 0x7f060064

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/ComponentName;

    const-string v17, "com.android.deskclock"

    const-string v18, "com.android.deskclock.DeskClock"

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 246
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v12, pickWallpaper:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    .line 249
    .local v10, chooser:Landroid/content/Intent;
    const v13, 0x7f06005d

    const/16 v14, 0xa

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 253
    new-instance v8, Landroid/content/Intent;

    const-string v13, "wifi"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v8, changeWifi:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 255
    .local v9, changeWifiPendingIntent:Landroid/app/PendingIntent;
    const v13, 0x7f060051

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v13, "voice"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, changeBlueTooth:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 260
    .local v3, changeBlueToothPendingIntent:Landroid/app/PendingIntent;
    const v13, 0x7f060056

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 263
    new-instance v6, Landroid/content/Intent;

    const-string v13, "rotation"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v6, changeSync:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 265
    .local v7, changeSyncPendingIntent:Landroid/app/PendingIntent;
    const v13, 0x7f060053

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 268
    new-instance v4, Landroid/content/Intent;

    const-string v13, "brightness"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v4, changeBrightness:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 270
    .local v5, changeBrightnessPendingIntent:Landroid/app/PendingIntent;
    const v13, 0x7f06004e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 272
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 273
    return-void
.end method

.method private setTime(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 626
    sget-boolean v0, Lcom/android/launcher2/Win8Widget;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 627
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 630
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mCal:Ljava/util/Calendar;

    .line 631
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f060063

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mDf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 632
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f060057

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher2/Win8Widget;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Win8Widget;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Win8Widget;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 633
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f060058

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mWeek:[Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Win8Widget;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 635
    :cond_1
    return-void
.end method

.method private turnOrOffWifiIcon(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "on"

    .prologue
    const v4, 0x7f060050

    const v3, 0x7f06004f

    .line 611
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 613
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 615
    :cond_0
    if-eqz p2, :cond_1

    .line 616
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 617
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f02007f

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 622
    :goto_0
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 623
    return-void

    .line 619
    :cond_1
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f020013

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 620
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f020012

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private static updateBrightnessIcon(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f06004d

    const/16 v5, 0x66

    const v4, 0x7f06004c

    .line 583
    invoke-static {p0}, Lcom/android/launcher2/Win8Widget;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 584
    sget-object v1, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 586
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 589
    :cond_0
    const/16 v1, 0xcc

    if-le v0, v1, :cond_1

    .line 590
    sget-object v1, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v2, 0x7f02000b

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 599
    :goto_0
    if-le v0, v5, :cond_3

    .line 600
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f02007f

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 606
    :goto_1
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/launcher2/Win8Widget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 608
    return-void

    .line 592
    :cond_1
    if-le v0, v5, :cond_2

    .line 593
    sget-object v1, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v2, 0x7f02007e

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 596
    :cond_2
    sget-object v1, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v2, 0x7f020015

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 603
    :cond_3
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f020012

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private static updateRotation(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f060052

    .line 465
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 467
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/Win8Widget;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f02007f

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 474
    :goto_0
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/launcher2/Win8Widget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 475
    return-void

    .line 472
    :cond_1
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v1, 0x7f020012

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private updateVolue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f060055

    const v6, 0x7f060054

    const/4 v5, 0x3

    .line 330
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 331
    .local v0, am:Landroid/media/AudioManager;
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 332
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03001f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 333
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 336
    :cond_0
    if-eqz p2, :cond_2

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, whichStream:I
    :goto_0
    if-ne v1, v5, :cond_1

    .line 342
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 343
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v3, 0x7f02007d

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 344
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v3, 0x7f020012

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 350
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 351
    return-void

    .line 339
    .end local v1           #whichStream:I
    :cond_2
    const/4 v1, 0x3

    .restart local v1       #whichStream:I
    goto :goto_0

    .line 346
    :cond_3
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v3, 0x7f02009f

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 347
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    const v3, 0x7f02007f

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 570
    if-nez p2, :cond_1

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8Widget;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 575
    .local v0, wifiState:I
    :goto_0
    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 576
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/Win8Widget;->turnOrOffWifiIcon(Landroid/content/Context;Z)V

    .line 580
    :goto_1
    return-void

    .line 573
    .end local v0           #wifiState:I
    :cond_1
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/Win8Widget;->wifiStateToFiveState(I)I

    move-result v0

    .restart local v0       #wifiState:I
    goto :goto_0

    .line 578
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/Win8Widget;->turnOrOffWifiIcon(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 638
    packed-switch p0, :pswitch_data_0

    .line 648
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 640
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 642
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 644
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 646
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 638
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
    .line 653
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 654
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/Win8Widget;->wifiStateToFiveState(I)I

    move-result v1

    .line 657
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
    .line 661
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8Widget;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 667
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 663
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 661
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
    .line 284
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 285
    sget-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    invoke-virtual {v0}, Lcom/android/launcher2/Win8Widget$LauncherObserver;->stopObserving()V

    .line 287
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Win8Widget;->LauncherObserver:Lcom/android/launcher2/Win8Widget$LauncherObserver;

    .line 289
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Win8WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 291
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Win8Widget;->mIsEnabled:Z

    .line 292
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Win8Widget;->mIsEnabled:Z

    .line 280
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 300
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 301
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Win8Widget;->setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V

    .line 303
    :cond_0
    const-string v0, "android.intent.action.TIME_SET"

    sget-object v1, Lcom/android/launcher2/Win8WidgetService;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/android/launcher2/Win8Widget;->mDf:Ljava/text/SimpleDateFormat;

    .line 306
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8Widget;->setTime(Landroid/content/Context;)V

    .line 307
    sget-object v0, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 327
    :cond_2
    :goto_1
    return-void

    .line 304
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8Widget;->toggleState(Landroid/content/Context;)V

    goto :goto_1

    .line 310
    :cond_5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8Widget;->updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 312
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    const-string v0, "rotation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8Widget;->changeRotation(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 318
    :cond_7
    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    const-string v0, "brightness"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8Widget;->changeBrightness(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 322
    :cond_8
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Win8Widget;->updateVolue(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 324
    :cond_9
    const-string v0, "voice"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8Widget;->changeVoie(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 155
    array-length v1, p3

    .line 156
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 157
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

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/Win8Widget;->MINIMUM_BACKLIGHT:I

    .line 160
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03001f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    .line 161
    sput-object p2, Lcom/android/launcher2/Win8Widget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 162
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/launcher2/Win8Widget;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 163
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    sput-object v2, Lcom/android/launcher2/Win8Widget;->mDf:Ljava/text/SimpleDateFormat;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Win8Widget;->mRe:Landroid/content/res/Resources;

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/Win8Widget;->mRe:Landroid/content/res/Resources;

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Win8Widget;->mWeek:[Ljava/lang/String;

    .line 167
    sget-object v2, Lcom/android/launcher2/Win8Widget;->mView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/launcher2/Win8Widget;->setEachViewIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/launcher2/Win8Widget;->refurbishTime(Landroid/content/Context;)V

    .line 169
    invoke-static {p1}, Lcom/android/launcher2/Win8Widget;->updateBrightnessIcon(Landroid/content/Context;)V

    .line 170
    invoke-static {p1}, Lcom/android/launcher2/Win8Widget;->updateRotation(Landroid/content/Context;)V

    .line 171
    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/Win8Widget;->updateVolue(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/Win8Widget;->updateWifiIcon(Landroid/content/Context;Landroid/content/Intent;)V

    .line 176
    invoke-static {p1}, Lcom/android/launcher2/Win8Widget;->checkObserver(Landroid/content/Context;)V

    .line 177
    return-void

    .line 163
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
    .line 687
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 689
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 690
    const-string v1, "MyIconWidget"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    return-void

    .line 694
    :cond_0
    new-instance v1, Lcom/android/launcher2/Win8Widget$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher2/Win8Widget$5;-><init>(Lcom/android/launcher2/Win8Widget;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Win8Widget$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8Widget;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 673
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 674
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/Win8Widget;->requestStateChange(Landroid/content/Context;Z)V

    .line 685
    return-void

    .line 676
    :pswitch_0
    const/4 v1, 0x0

    .line 677
    goto :goto_0

    .line 679
    :pswitch_1
    const/4 v1, 0x1

    .line 680
    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
