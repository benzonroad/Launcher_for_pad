.class public Lcom/android/launcher2/AppsCustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher2/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F

.field private static TRANSITION_MAX_ROTATION:F

.field private static TRANSITION_PIVOT:F

.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppIconSize:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentWidth:I

.field private mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragViewMultiplyColor:I

.field private mHasShownAllAppsCling:Z

.field private mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private final mWidgetPreviewIconPaddedDimension:I

.field private mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const v0, 0x45cb2000

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 231
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 232
    const v0, 0x3f266666

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 233
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 212
    const/high16 v2, 0x3e80

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->sWidgetPreviewIconPaddingPercentage:F

    .line 229
    new-instance v2, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 235
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 236
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 249
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 254
    new-instance v2, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v2}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 255
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 261
    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 262
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    .line 264
    sget-object v2, Lcom/android/launcher/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 266
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 267
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 269
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 271
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 272
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 273
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    .line 274
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 280
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    .line 282
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizePagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1451
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1452
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1453
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 1454
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 1455
    .local v2, index:I
    if-gez v2, :cond_0

    .line 1456
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1459
    .end local v2           #index:I
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    return-void
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    .line 553
    return-void
.end method

.method private beginDraggingWidget(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 557
    const v1, 0x7f060010

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 558
    .local v14, image:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PendingAddItemInfo;

    .line 563
    .local v11, createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    instance-of v1, v11, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_1

    move-object v12, v11

    .line 564
    check-cast v12, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 565
    .local v12, createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Lcom/android/launcher2/PendingAddWidgetInfo;[I)[I

    move-result-object v17

    .line 566
    .local v17, spanXY:[I
    const/4 v1, 0x0

    aget v1, v17, v1

    iput v1, v11, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 567
    const/4 v1, 0x1

    aget v1, v17, v1

    iput v1, v11, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v12, v5}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I

    move-result-object v15

    .line 571
    .local v15, maxSize:[I
    iget-object v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v3, v12, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    iget v4, v12, Lcom/android/launcher2/PendingAddWidgetInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v17, v1

    const/4 v1, 0x1

    aget v6, v17, v1

    const/4 v1, 0x0

    aget v7, v15, v1

    const/4 v1, 0x1

    aget v8, v15, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 587
    .end local v12           #createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v15           #maxSize:[I
    .end local v17           #spanXY:[I
    .local v3, preview:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v9, 0x0

    .line 588
    .local v9, alphaClipPaint:Landroid/graphics/Paint;
    instance-of v1, v11, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_0

    move-object v1, v11

    .line 589
    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v10

    .line 591
    .local v10, alphaClipTable:Landroid/graphics/MaskFilter;
    new-instance v9, Landroid/graphics/Paint;

    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 592
    .restart local v9       #alphaClipPaint:Landroid/graphics/Paint;
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 597
    .end local v10           #alphaClipTable:Landroid/graphics/MaskFilter;
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 599
    .local v16, outline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 604
    const/4 v9, 0x0

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v11, v0, v9}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    const/4 v7, 0x0

    move-object v2, v14

    move-object/from16 v4, p0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 609
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    return-void

    .line 577
    .end local v3           #preview:Landroid/graphics/Bitmap;
    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    .end local v16           #outline:Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 579
    .restart local v3       #preview:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 580
    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 583
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v1, v11, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto/16 :goto_0
.end method

.method private cancelAllTasks()V
    .locals 3

    .prologue
    .line 686
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 687
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 689
    .local v1, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 690
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 692
    .end local v1           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_0
    return-void
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1535
    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_1

    .line 1536
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   label=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" previewImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initialLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1541
    :cond_1
    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 1542
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   label=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1547
    :cond_2
    return-void
.end method

.method private endDragging(Landroid/view/View;Z)V
    .locals 1
    .parameter "target"
    .parameter "success"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/Workspace;->onDragStopped(Z)V

    .line 631
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher2/DeleteDropTarget;

    if-nez v0, :cond_1

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 639
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1467
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1468
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1469
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1470
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1471
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1475
    .end local v0           #i:I
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v0

    .line 1469
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1475
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 9

    .prologue
    .line 306
    const/4 v3, -0x1

    .line 307
    .local v3, i:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    .line 309
    .local v2, currentPage:I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_1

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 311
    .local v4, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 312
    .local v1, childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 313
    .local v6, numItemsPerPage:I
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 314
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 315
    mul-int v3, v2, v6

    .line 328
    .end local v0           #childCount:I
    .end local v1           #childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .end local v2           #currentPage:I
    .end local v4           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    .end local v6           #numItemsPerPage:I
    :cond_0
    :goto_0
    return v3

    .line 318
    .restart local v2       #currentPage:I
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 319
    .local v5, numApps:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 320
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 321
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 322
    .restart local v0       #childCount:I
    if-lez v0, :cond_0

    .line 323
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    add-int v3, v5, v7

    goto :goto_0
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "info"

    .prologue
    .line 1011
    const/4 v3, 0x0

    .line 1012
    .local v3, offset:I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 1013
    .local v7, bitmapSize:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1016
    .local v2, preview:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1017
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1018
    return-object v2
.end method

.method private getSleepForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 841
    .local v0, pageDiff:I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 830
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 831
    .local v0, pageDiff:I
    if-gtz v0, :cond_0

    .line 836
    :goto_0
    return v1

    .line 833
    :cond_0
    if-gt v0, v1, :cond_1

    move v1, v2

    .line 834
    goto :goto_0

    :cond_1
    move v1, v2

    .line 836
    goto :goto_0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 7
    .parameter "page"

    .prologue
    .line 806
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 807
    .local v4, toPage:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 808
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 814
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 815
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 816
    .local v1, minPageDiff:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 817
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 818
    .local v3, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 819
    goto :goto_0

    .line 821
    .end local v3           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_1
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 822
    .local v2, rawPageDiff:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1025
    if-gez p6, :cond_e

    const v2, 0x7fffffff

    .line 1026
    :goto_0
    if-gez p7, :cond_d

    const v0, 0x7fffffff

    .line 1028
    :goto_1
    const/4 v1, 0x0

    .line 1029
    if-eqz p2, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, p2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1031
    if-nez v1, :cond_0

    .line 1032
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 1040
    :goto_2
    if-eqz v4, :cond_5

    .line 1041
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1042
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1045
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1046
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v2

    move v2, v0

    .line 1064
    :goto_3
    const/high16 v0, 0x3f80

    .line 1065
    if-le v5, v3, :cond_1

    .line 1066
    int-to-float v0, v3

    int-to-float v3, v5

    div-float/2addr v0, v3

    .line 1068
    :cond_1
    int-to-float v3, v6

    mul-float/2addr v3, v0

    int-to-float v8, v2

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    .line 1069
    int-to-float v0, v2

    int-to-float v2, v6

    div-float/2addr v0, v2

    .line 1071
    :cond_2
    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 1072
    int-to-float v2, v5

    mul-float/2addr v2, v0

    float-to-int v5, v2

    .line 1073
    int-to-float v2, v6

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 1076
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1078
    if-eqz v4, :cond_7

    .line 1079
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1104
    :goto_4
    return-object v2

    .line 1039
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_2

    .line 1051
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v5

    .line 1052
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v6

    .line 1053
    if-ne p4, p5, :cond_c

    .line 1055
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v3, v3

    const/high16 v5, 0x3e80

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 1056
    const/4 v5, 0x1

    if-gt p4, v5, :cond_6

    .line 1057
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v5, v3

    move v5, v6

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 1059
    :cond_6
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v3, v3, 0x4

    add-int v6, v5, v3

    move v5, v6

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 1082
    :cond_7
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1083
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1084
    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1085
    const/4 v0, 0x1

    if-ne p4, v0, :cond_8

    const/4 v0, 0x1

    if-eq p5, v0, :cond_9

    .line 1086
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1092
    :cond_9
    const/4 v1, 0x0

    .line 1093
    :try_start_0
    div-int/lit8 v0, v5, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v3, v0

    .line 1094
    div-int/lit8 v0, v6, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v4, v0

    .line 1095
    if-lez p3, :cond_a

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, v7, p3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1096
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1097
    if-nez v1, :cond_b

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1099
    :cond_b
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v5, v0

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1102
    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_c
    move v3, v2

    move v2, v0

    goto/16 :goto_3

    :cond_d
    move/from16 v0, p7

    goto/16 :goto_1

    :cond_e
    move v2, p6

    goto/16 :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 17
    .parameter "task"
    .parameter "data"

    .prologue
    .line 1200
    if-eqz p1, :cond_0

    .line 1202
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1206
    :cond_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1207
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1208
    .local v13, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1209
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 1210
    if-eqz p1, :cond_3

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    :cond_1
    return-void

    .line 1215
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1218
    :cond_3
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1219
    .local v16, rawInfo:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_5

    move-object/from16 v14, v16

    .line 1220
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1221
    .local v14, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1222
    .local v10, cellSpans:[I
    iget-object v2, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v10, v1

    const/4 v1, 0x1

    aget v6, v10, v1

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1224
    .local v9, b:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v9           #b:Landroid/graphics/Bitmap;
    .end local v10           #cellSpans:[I
    .end local v14           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1225
    :cond_5
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_4

    move-object/from16 v14, v16

    .line 1227
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1228
    .local v14, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 12
    .parameter "data"

    .prologue
    .line 1233
    iget v5, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1234
    .local v5, page:I
    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1236
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget-object v2, p1, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1237
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1238
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1239
    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewWidget;

    .line 1240
    .local v9, widget:Lcom/android/launcher2/PagedViewWidget;
    if-eqz v9, :cond_0

    .line 1241
    iget-object v10, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1242
    .local v7, preview:Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V

    .line 1238
    .end local v7           #preview:Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    .end local v9           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->createHardwareLayer()V

    .line 1247
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidate()V

    .line 1256
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1257
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1259
    .local v8, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v10, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v11, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v6, v10, v11

    .line 1260
    .local v6, pageIndex:I
    invoke-direct {p0, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    .line 1262
    .end local v6           #pageIndex:I
    .end local v8           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_2
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .locals 12
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellCountX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p2, widgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 851
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 852
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 853
    .local v10, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v11, v1, v2

    .line 854
    .local v11, taskPage:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_1

    .line 856
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 857
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 859
    :cond_1
    invoke-direct {p0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 864
    .end local v10           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .end local v11           #taskPage:I
    :cond_2
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v8

    .line 865
    .local v8, sleepMs:I
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    new-instance v5, Lcom/android/launcher2/AppsCustomizePagedView$4;

    invoke-direct {v5, p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$5;

    invoke-direct {v6, p0}, Lcom/android/launcher2/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 895
    .local v0, pageData:Lcom/android/launcher2/AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    sget-object v1, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    invoke-direct {v9, p1, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 897
    .local v9, t:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 898
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 899
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1479
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1480
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1481
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1482
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    .line 1483
    .local v3, removeIndex:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 1484
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1480
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #removeIndex:I
    :cond_1
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 991
    const/high16 v7, 0x3f80

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 992
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"
    .parameter "multiplyColor"

    .prologue
    .line 996
    if-eqz p2, :cond_1

    .line 997
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 998
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 999
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1000
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1001
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1003
    const/4 v2, -0x1

    if-eq p8, v2, :cond_0

    .line 1004
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1006
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1008
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 741
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 742
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 746
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 747
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 748
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 755
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 756
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 757
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 758
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 759
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 760
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 761
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 979
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 984
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 985
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 986
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 987
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->measure(II)V

    .line 988
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentTab(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 722
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 725
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 727
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 734
    .end local v1           #tag:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 728
    .restart local v1       #tag:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 372
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 373
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1462
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1463
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1464
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1465
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 617
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->enterSpringLoadedDragMode()V

    .line 622
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_2

    .line 623
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 627
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 624
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    .line 625
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)V

    goto :goto_1
.end method

.method public clearAllWidgetPages()V
    .locals 5

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 674
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 675
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 676
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 677
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_0

    .line 678
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 679
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 675
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_1
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 548
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1527
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1528
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mWidgets"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1529
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1567
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1568
    .local v2, windowSize:I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1569
    .local v1, windowMinIndex:I
    return v1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1573
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1574
    .local v2, windowSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1576
    .local v1, windowMaxIndex:I
    return v1
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1581
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1585
    :goto_0
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_1

    .line 1586
    const v2, 0x7f0c0046

    .line 1587
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    move v5, v1

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1594
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1581
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0

    .line 1589
    :cond_1
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v2, v0, v1

    .line 1590
    const v1, 0x7f0c0047

    .line 1591
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_1
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 1407
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 342
    if-gez p1, :cond_0

    const/4 v1, 0x0

    .line 349
    :goto_0
    return v1

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 345
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 346
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0

    .line 348
    .end local v0           #numItemsPerPage:I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 349
    .restart local v0       #numItemsPerPage:I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 336
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getmNumAppsPages()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    return v0
.end method

.method public getmNumWidgetPages()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    return v0
.end method

.method protected indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    .line 288
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 292
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 293
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 507
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isAllAppsCustomizeOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    instance-of v6, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 513
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$3;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 519
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    instance-of v6, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0008

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 526
    .local v2, offsetY:F
    const v6, 0x7f060010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 527
    .local v3, p:Landroid/widget/ImageView;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 528
    .local v1, bounce:Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v2, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 529
    .local v5, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 531
    .local v4, tydAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 533
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 534
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected onDataReady(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 379
    .local v3, isLandscape:Z
    :goto_0
    const v4, 0x7fffffff

    .line 380
    .local v4, maxCellCountX:I
    const v5, 0x7fffffff

    .line 381
    .local v5, maxCellCountY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 382
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 384
    :goto_1
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 387
    :cond_0
    :goto_2
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 388
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 390
    :cond_1
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 391
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 396
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 397
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 399
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 400
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 401
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 402
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 406
    .local v7, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 407
    .local v0, heightSpec:I
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8, v7, v0}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 408
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    .line 410
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    .line 411
    .local v1, host:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v2

    .line 414
    .local v2, hostIsTransitioning:Z
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v6

    .line 415
    .local v6, page:I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 420
    if-nez v2, :cond_3

    .line 421
    new-instance v8, Lcom/android/launcher2/AppsCustomizePagedView$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 428
    :cond_3
    return-void

    .line 377
    .end local v0           #heightSpec:I
    .end local v1           #host:Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v2           #hostIsTransitioning:Z
    .end local v3           #isLandscape:Z
    .end local v4           #maxCellCountX:I
    .end local v5           #maxCellCountY:I
    .end local v6           #page:I
    .end local v7           #widthSpec:I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 382
    .restart local v3       #isLandscape:Z
    .restart local v4       #maxCellCountX:I
    .restart local v5       #maxCellCountY:I
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v4

    goto/16 :goto_1

    .line 384
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v5

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 668
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 669
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 670
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V
    .locals 8
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    .line 643
    invoke-direct {p0, p1, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;Z)V

    .line 647
    if-nez p3, :cond_1

    .line 648
    const/4 v3, 0x0

    .line 649
    .local v3, showOutOfSpaceMessage:Z
    instance-of v5, p1, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_0

    .line 650
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, currentScreen:I
    move-object v4, p1

    .line 651
    check-cast v4, Lcom/android/launcher2/Workspace;

    .line 652
    .local v4, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 653
    .local v2, layout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 654
    .local v1, itemInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    .line 656
    const/4 v5, 0x0

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 660
    .end local v0           #currentScreen:I
    .end local v1           #itemInfo:Lcom/android/launcher2/ItemInfo;
    .end local v2           #layout:Lcom/android/launcher2/CellLayout;
    .end local v4           #workspace:Lcom/android/launcher2/Workspace;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 661
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 664
    .end local v3           #showOutOfSpaceMessage:Z
    :cond_1
    return-void

    .line 656
    .restart local v0       #currentScreen:I
    .restart local v1       #itemInfo:Lcom/android/launcher2/ItemInfo;
    .restart local v2       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v3       #showOutOfSpaceMessage:Z
    .restart local v4       #workspace:Lcom/android/launcher2/Workspace;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 539
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 447
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 448
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 449
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->setDataIsReady()V

    .line 452
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 453
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V

    .line 457
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 458
    return-void
.end method

.method public onPackagesUpdated()V
    .locals 3

    .prologue
    .line 466
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 1412
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 1416
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1417
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 297
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1399
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1400
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1490
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1491
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1492
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1493
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 1509
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1510
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1511
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1512
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1515
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_1

    .line 1516
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 1518
    :cond_1
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 365
    if-gez p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x4000

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    .line 1331
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->screenScrolled(I)V

    move v0, v1

    .line 1333
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1334
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1335
    if-eqz v7, :cond_1

    .line 1336
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v8

    .line 1338
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1340
    sub-float v4, v3, v2

    sget v6, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v2, v6

    add-float v6, v4, v2

    .line 1342
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 1346
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    cmpg-float v2, v8, v5

    if-gez v2, :cond_3

    .line 1347
    :cond_0
    cmpg-float v2, v8, v5

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v3, v9

    invoke-virtual {v2, v9}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1354
    :goto_1
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setCameraDistance(F)V

    .line 1355
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1356
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1359
    if-nez v0, :cond_4

    cmpg-float v11, v8, v5

    if-gez v11, :cond_4

    .line 1361
    sget v2, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    int-to-float v4, v9

    mul-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1362
    sget v2, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotationY(F)V

    move v2, v3

    move v4, v5

    move v6, v3

    .line 1382
    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1383
    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1384
    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1385
    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1389
    const v4, 0x3caaaaab

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 1390
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 1347
    goto :goto_1

    .line 1351
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v9, v3, v8

    invoke-virtual {v2, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    .line 1367
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v0, v11, :cond_5

    cmpl-float v11, v8, v5

    if-lez v11, :cond_5

    .line 1369
    sget v2, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    sub-float v2, v3, v2

    int-to-float v4, v9

    mul-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1370
    sget v2, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotationY(F)V

    move v2, v3

    move v4, v5

    move v6, v3

    .line 1374
    goto :goto_2

    .line 1376
    :cond_5
    int-to-float v8, v10

    div-float/2addr v8, v12

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1377
    int-to-float v8, v9

    div-float/2addr v8, v12

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1378
    invoke-virtual {v7, v5}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 1391
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1396
    :cond_7
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
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
    .line 1441
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1442
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1443
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1447
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    .line 1448
    :cond_0
    return-void
.end method

.method public setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 695
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 696
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    goto :goto_0
.end method

.method public setmSaveInstanceStateItemIndex(I)V
    .locals 0
    .parameter "mSaveInstanceStateItemIndex"

    .prologue
    .line 244
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 245
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 1425
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 1426
    return-void
.end method

.method showAllAppsCling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 434
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 435
    .local v0, offset:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v1

    .line 436
    .local v1, pos:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 438
    aget v2, v1, v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aget v4, v0, v6

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 440
    aget v2, v1, v5

    aget v3, v0, v5

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 441
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->showFirstRunAllAppsCling([I)V

    .line 443
    .end local v0           #offset:[I
    .end local v1           #pos:[I
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 5
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 703
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 704
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 707
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 708
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 710
    .local v2, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v3, v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v1, v3, v4

    .line 711
    .local v1, pageIndex:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_2

    .line 713
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 715
    :cond_2
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 718
    .end local v1           #pageIndex:I
    .end local v2           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_3
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 1555
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1556
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    .line 765
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    .line 766
    mul-int v4, p1, v0

    .line 767
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout;

    .line 770
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 771
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 773
    :goto_0
    if-ge v3, v5, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 775
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewIcon;

    .line 777
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, v12, v8}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/HolographicOutlineHelper;)V

    .line 778
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 780
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 781
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 783
    sub-int v8, v3, v4

    .line 784
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v9, v8, v9

    .line 785
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int/2addr v8, v10

    .line 786
    const/4 v10, -0x1

    new-instance v11, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v11, v9, v8, v12, v12}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v10, v3, v11}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 788
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 792
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 799
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 1
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1310
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1289
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAllViews()V

    .line 1290
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1292
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1293
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_0

    .line 1294
    new-instance v3, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1296
    .local v3, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 1297
    new-instance v4, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    .end local v3           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_1

    .line 1302
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1303
    .local v3, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1304
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1306
    .end local v3           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 1108
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v4, v0, v1

    .line 1111
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v0

    .line 1113
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v2, v0, v1

    .line 1115
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->getContentHeight()I

    move-result v0

    .line 1116
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    div-int v3, v0, v1

    .line 1120
    mul-int v1, p1, v4

    move v0, v1

    .line 1121
    :goto_0
    add-int v5, v1, v4

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1122
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1127
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    move v5, v6

    .line 1128
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 1129
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1131
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030006

    invoke-virtual {v0, v8, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    .line 1133
    instance-of v8, v1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v8, :cond_4

    .line 1135
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1136
    new-instance v8, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {v8, v1, v12, v12}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v1, v12}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v9

    .line 1138
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v0, v1, v10, v9, v11}, Lcom/android/launcher2/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher2/HolographicOutlineHelper;)V

    .line 1140
    invoke-virtual {v0, v8}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1151
    :cond_1
    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1153
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1154
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1157
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v1, v5, v1

    .line 1158
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v8, v5, v8

    .line 1159
    new-instance v9, Landroid/widget/GridLayout$LayoutParams;

    sget-object v10, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v8, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    sget-object v11, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1162
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1163
    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1164
    const/16 v10, 0x33

    invoke-virtual {v9, v10}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1165
    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1166
    :cond_2
    if-lez v8, :cond_3

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1167
    :cond_3
    invoke-virtual {v4, v0, v9}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1141
    :cond_4
    instance-of v8, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v8, :cond_1

    .line 1143
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1144
    new-instance v8, Lcom/android/launcher2/PendingAddItemInfo;

    invoke-direct {v8}, Lcom/android/launcher2/PendingAddItemInfo;-><init>()V

    .line 1145
    const/4 v9, 0x1

    iput v9, v8, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 1146
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v8, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1148
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v0, v9, v1, v10}, Lcom/android/launcher2/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/HolographicOutlineHelper;)V

    .line 1149
    invoke-virtual {v0, v8}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1173
    :cond_5
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$8;

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/AppsCustomizePagedView$8;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1195
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1499
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1500
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1501
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1503
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1504
    return-void
.end method

.method public updatePackages()V
    .locals 9

    .prologue
    .line 475
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 476
    .local v3, wasEmpty:Z
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 477
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 479
    .local v5, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v2, shortcutsIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, shortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 482
    .local v4, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v6, :cond_0

    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v6, :cond_0

    .line 483
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_0
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid dimensions ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    .end local v4           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 490
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 492
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 494
    if-eqz v3, :cond_3

    .line 497
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    .line 502
    :cond_2
    :goto_1
    return-void

    .line 499
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    goto :goto_1
.end method
