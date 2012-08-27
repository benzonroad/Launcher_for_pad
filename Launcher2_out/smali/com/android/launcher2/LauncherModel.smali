.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;,
        Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGET_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCellCountX:I

.field private static mCellCountY:I

.field static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCollator:Ljava/text/Collator;

.field static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sFolders:Ljava/util/HashMap;
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

.field static final sItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field static final sWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private mBatchSize:I

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 83
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 1955
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 1956
    new-instance v0, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1966
    new-instance v0, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 1974
    new-instance v0, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->WIDGET_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 3
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v2, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v2}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 145
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 146
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 147
    new-instance v2, Lcom/android/launcher2/AllAppsList;

    invoke-direct {v2, p2}, Lcom/android/launcher2/AllAppsList;-><init>(Lcom/android/launcher2/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 148
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 150
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v2}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 153
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    .line 155
    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    .line 156
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 157
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    .line 158
    return-void

    .line 145
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"
    .parameter "color"

    .prologue
    .line 415
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 416
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 417
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 418
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->mColor:I

    .line 421
    instance-of v4, p0, Lcom/android/launcher2/Launcher;

    if-eqz v4, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    move-object v4, p0

    .line 423
    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 428
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v3}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 433
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->generateNewId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 434
    const-string v4, "_id"

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    const-string v4, "color"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 438
    new-instance v2, Lcom/android/launcher2/LauncherModel$4;

    invoke-direct {v2, v1, p7, v3, p1}, Lcom/android/launcher2/LauncherModel$4;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;)V

    .line 467
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 468
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 472
    :goto_1
    return-void

    .line 425
    .end local v0           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #r:Ljava/lang/Runnable;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    goto :goto_0

    .line 470
    .restart local v0       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #r:Ljava/lang/Runnable;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIILjava/lang/Integer;)V
    .locals 9
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "color"

    .prologue
    .line 201
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 203
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)V
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 541
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Lcom/android/launcher2/FolderInfo;)V

    .line 557
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 558
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 508
    .local v2, uriToDelete:Landroid/net/Uri;
    new-instance v1, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/launcher2/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher2/ItemInfo;)V

    .line 528
    .local v1, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 529
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1946
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1947
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-nez v0, :cond_0

    .line 1949
    new-instance v0, Lcom/android/launcher2/FolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 1950
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    .line 665
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    .line 670
    return-void

    .line 665
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 484
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 488
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .parameter "container"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 479
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .parameter "info"

    .prologue
    .line 1981
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1982
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v14, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 332
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "itemType"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "container"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "screen"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "cellX"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cellY"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "spanX"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "spanY"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 337
    .local v7, c:Landroid/database/Cursor;
    const-string v2, "itemType"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 338
    .local v13, itemTypeIndex:I
    const-string v2, "container"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 339
    .local v10, containerIndex:I
    const-string v2, "screen"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 340
    .local v15, screenIndex:I
    const-string v2, "cellX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 341
    .local v8, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 342
    .local v9, cellYIndex:I
    const-string v2, "spanX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 343
    .local v16, spanXIndex:I
    const-string v2, "spanY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 346
    .local v17, spanYIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v12, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v12}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 348
    .local v12, item:Lcom/android/launcher2/ItemInfo;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 349
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 350
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 351
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 352
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/android/launcher2/ItemInfo;->container:J

    .line 353
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 354
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 356
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v12           #item:Lcom/android/launcher2/ItemInfo;
    :catch_0
    move-exception v11

    .line 359
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 364
    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    return-object v14

    .line 361
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 11
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1712
    const/4 v1, 0x0

    .line 1713
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v4}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1714
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 1718
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1720
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1721
    .local v2, iconType:I
    packed-switch v2, :pswitch_data_0

    .line 1759
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1760
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1761
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1764
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1765
    return-object v4

    .line 1723
    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1724
    .local v6, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1725
    .local v7, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1726
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1729
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1730
    .local v8, resources:Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 1731
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1732
    .local v3, id:I
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9, v8, v3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1739
    .end local v3           #id:I
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1740
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1743
    :cond_2
    if-nez v1, :cond_0

    .line 1744
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1745
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1749
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #resourceName:Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1750
    if-nez v1, :cond_3

    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1752
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1753
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1755
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1735
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v7       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 255
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 256
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 257
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 261
    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    move-object v1, p0

    .line 263
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 268
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 275
    return-void

    .line 265
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    goto :goto_0
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 282
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 283
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 284
    iput p2, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 285
    iput p3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v1, "resizeItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 318
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    return v7

    .line 320
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 699
    .local v1, oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const/4 v0, 0x1

    .line 703
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 705
    :cond_1
    return v0
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v1, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .local v0, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 192
    return-object v1
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 303
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 304
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "values"
    .parameter "item"
    .parameter "callingFunction"

    .prologue
    .line 212
    iget-wide v4, p2, Lcom/android/launcher2/ItemInfo;->id:J

    .line 213
    .local v4, itemId:J
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 214
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 216
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/launcher2/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 244
    .local v0, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 496
    sput p0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    .line 497
    sput p1, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    .line 498
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1785
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    if-nez v1, :cond_0

    .line 1786
    const/4 v1, 0x0

    .line 1790
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-object v1

    .line 1788
    .restart local v1       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2049
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2051
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2052
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2053
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2054
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 2059
    :goto_0
    return-void

    .line 2057
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1502
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1503
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 372
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 378
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 380
    .local v13, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 381
    .local v15, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 382
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 383
    .local v14, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 384
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 386
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 387
    .local v12, folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 393
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 394
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/ItemInfo;->id:J

    .line 395
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/ItemInfo;->container:J

    .line 396
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 397
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 398
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :goto_1
    return-object v12

    .line 389
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/android/launcher2/FolderInfo;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 403
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 406
    const/4 v12, 0x0

    goto :goto_1

    .line 403
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"
    .parameter "context"

    .prologue
    .line 1773
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1775
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1778
    :goto_0
    return-object v2

    .line 1777
    :catch_0
    move-exception v1

    .line 1778
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;
    .locals 8
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1626
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;
    .locals 11
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/launcher2/ShortcutInfo;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p7, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .line 1637
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v4}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1639
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1640
    .local v1, componentName:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 1641
    const/4 v4, 0x0

    .line 1702
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-object v4

    .line 1645
    .restart local v4       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1646
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1

    .line 1649
    const/4 v4, 0x0

    goto :goto_0

    .line 1651
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1652
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackInfo failed for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1663
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 1664
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p7

    invoke-virtual {v8, v1, v7, v0}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1667
    :cond_2
    if-nez v3, :cond_3

    .line 1668
    if-eqz p4, :cond_3

    .line 1669
    move/from16 v0, p5

    invoke-virtual {p0, p4, v0, p3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1673
    :cond_3
    if-nez v3, :cond_4

    .line 1674
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1675
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1677
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1680
    if-eqz v7, :cond_5

    .line 1681
    invoke-static {v7}, Lcom/android/launcher2/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1682
    .local v5, key:Landroid/content/ComponentName;
    if-eqz p7, :cond_8

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1683
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    iput-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1692
    .end local v5           #key:Landroid/content/ComponentName;
    :cond_5
    :goto_1
    iget-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_6

    .line 1693
    if-eqz p4, :cond_6

    .line 1694
    move/from16 v0, p6

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1698
    :cond_6
    iget-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_7

    .line 1699
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1701
    :cond_7
    const/4 v8, 0x0

    iput v8, v4, Lcom/android/launcher2/ItemInfo;->itemType:I

    goto/16 :goto_0

    .line 1685
    .restart local v5       #key:Landroid/content/ComponentName;
    :cond_8
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1686
    if-eqz p7, :cond_5

    .line 1687
    iget-object v8, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1847
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1848
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1849
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1851
    if-nez v1, :cond_0

    .line 1853
    const-string v1, "Launcher.Model"

    const-string v2, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_0
    return-object v4

    .line 1858
    :cond_0
    const/4 v6, 0x0

    .line 1861
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1862
    new-instance v3, Lcom/android/launcher2/FastBitmapDrawable;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, v5

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    .line 1881
    :goto_1
    new-instance v6, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v6}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1883
    if-nez v4, :cond_3

    .line 1884
    if-eqz p3, :cond_2

    .line 1891
    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1893
    iput-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1894
    iput-object v1, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1895
    iput-boolean v3, v6, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1896
    iput-object v2, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v6

    .line 1898
    goto :goto_0

    .line 1865
    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1866
    if-eqz v3, :cond_4

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_4

    .line 1868
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1870
    iget-object v9, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1872
    iget-object v9, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1873
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v10, v8, v9}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move v3, v6

    .line 1877
    goto :goto_1

    .line 1875
    :catch_0
    move-exception v2

    move-object v2, v4

    .line 1876
    :goto_3
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not load shortcut icon: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_1

    .line 1887
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1888
    iput-boolean v5, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_2

    .line 1875
    :catch_1
    move-exception v8

    goto :goto_3

    :cond_3
    move-object/from16 p3, v4

    goto :goto_2

    :cond_4
    move-object v2, v4

    move v3, v6

    goto :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 586
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, packageName:Ljava/lang/String;
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 589
    .local v7, replacing:Z
    const/4 v4, 0x0

    .line 591
    .local v4, op:I
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 656
    .end local v4           #op:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v7           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 596
    .restart local v4       #op:I
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v7       #replacing:Z
    :cond_2
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 597
    const/4 v4, 0x2

    .line 612
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 613
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v9, v9, [Ljava/lang/String;

    aput-object v5, v9, v10

    invoke-direct {v8, p0, v4, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 598
    :cond_4
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 599
    if-nez v7, :cond_3

    .line 600
    const/4 v4, 0x3

    goto :goto_1

    .line 604
    :cond_5
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 605
    if-nez v7, :cond_6

    .line 606
    const/4 v4, 0x1

    goto :goto_1

    .line 608
    :cond_6
    const/4 v4, 0x2

    goto :goto_1

    .line 616
    .end local v4           #op:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v7           #replacing:Z
    :cond_7
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 618
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, packages:[Ljava/lang/String;
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-direct {v8, p0, v9, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 622
    .end local v6           #packages:[Ljava/lang/String;
    :cond_8
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 623
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 624
    .restart local v6       #packages:[Ljava/lang/String;
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v9, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 626
    .end local v6           #packages:[Ljava/lang/String;
    :cond_9
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 628
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    goto :goto_0

    .line 629
    :cond_a
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 634
    .local v2, currentConfig:Landroid/content/res/Configuration;
    iget v8, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    iget v9, v2, Landroid/content/res/Configuration;->mcc:I

    if-eq v8, v9, :cond_b

    .line 635
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reload apps on config change. curr_mcc:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " prevmcc:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    .line 640
    :cond_b
    iget v8, v2, Landroid/content/res/Configuration;->mcc:I

    iput v8, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0

    .line 641
    .end local v2           #currentConfig:Landroid/content/res/Configuration;
    :cond_c
    const-string v8, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 643
    :cond_d
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    .line 644
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 645
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_1

    .line 646
    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 649
    .end local v1           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_e
    const-string v8, "com.letou.launcher.RELOAD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 650
    new-instance v3, Lcom/android/launcher2/AllAppsList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v3, v8}, Lcom/android/launcher2/AllAppsList;-><init>(Lcom/android/launcher2/IconCache;)V

    .line 651
    .local v3, mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-virtual {v3}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 652
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v8}, Lcom/android/launcher2/IconCache;->flush()V

    .line 653
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    .line 654
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "com.letou.launcher.RELOAD"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 1904
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return v0

    .line 1913
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 1914
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1812
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1813
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v7, supportedConfigurationActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1818
    .local v8, supportsIntent:Landroid/content/Intent;
    invoke-virtual {v8, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v9

    .line 1823
    .local v9, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1825
    .local v2, configurationComponentToWidget:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1826
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1831
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    const/high16 v10, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1833
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1834
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1835
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    .local v5, infoComponent:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1838
    new-instance v11, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v11, v4, v10}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;-><init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1843
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #infoComponent:Landroid/content/ComponentName;
    :cond_2
    return-object v7
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p2, 0x1

    .line 719
    :goto_0
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 720
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 721
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    :cond_1
    monitor-exit v1

    .line 724
    return-void

    .line 718
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 4

    .prologue
    .line 679
    const/4 v1, 0x0

    .line 680
    .local v1, runLoader:Z
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 682
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    const/4 v1, 0x1

    .line 689
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    if-eqz v1, :cond_1

    .line 690
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 692
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 731
    :cond_0
    monitor-exit v1

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1920
    .line 1922
    if-eqz p3, :cond_0

    .line 1923
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    invoke-static {p3, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1924
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p2, v3}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1925
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1932
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1933
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to save icon bitmap for info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 1938
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1925
    goto :goto_0

    .line 1929
    :catch_0
    move-exception v1

    goto :goto_0
.end method
