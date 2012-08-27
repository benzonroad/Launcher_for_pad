.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    .line 100
    iput v2, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 101
    new-instance v0, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 107
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    .line 108
    iput v2, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 140
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method private drop(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 568
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 569
    .local v1, coordinates:[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 571
    .local v2, dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 572
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, accepted:Z
    if-eqz v2, :cond_0

    .line 575
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 576
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 577
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 579
    const/4 v0, 0x1

    .line 582
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2           #dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v0}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V

    .line 583
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    .line 388
    iget-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v2, :cond_1

    .line 389
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 390
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragController$DragListener;

    .line 391
    .local v1, listener:Lcom/android/launcher2/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 393
    .end local v1           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->remove()V

    .line 395
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 398
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 586
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 588
    .local v4, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 589
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    .local v0, count:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 591
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .line 592
    .local v5, target:Lcom/android/launcher2/DropTarget;
    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 590
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 595
    :cond_1
    invoke-interface {v5, v4}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 598
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 599
    aget v6, p3, v9

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v10

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 601
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p1, v6, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 602
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p2, v6, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 603
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 604
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 605
    .local v1, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v1, :cond_2

    .line 606
    move-object v5, v1

    .line 607
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 611
    :cond_2
    aget v6, p3, v9

    sub-int v6, p1, v6

    aput v6, p3, v9

    .line 612
    aget v6, p3, v10

    sub-int v6, p2, v6

    aput v6, p3, v10

    .line 617
    .end local v1           #delegate:Lcom/android/launcher2/DropTarget;
    .end local v5           #target:Lcom/android/launcher2/DropTarget;
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 405
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 406
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 459
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher2/DragView;->move(II)V

    .line 462
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 463
    .local v0, coordinates:[I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 464
    .local v2, dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x0

    aget v5, v0, v5

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 465
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x1

    aget v5, v0, v5

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 466
    if-eqz v2, :cond_5

    .line 467
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 468
    .local v1, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v1, :cond_0

    .line 469
    move-object v2, v1

    .line 472
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v4, v2, :cond_2

    .line 473
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_1

    .line 474
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 476
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 478
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 484
    .end local v1           #delegate:Lcom/android/launcher2/DropTarget;
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 488
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    .line 489
    .local v3, slop:I
    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v8, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 491
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v5, 0x0

    aput p1, v4, v5

    .line 492
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v5, 0x1

    aput p2, v4, v5

    .line 494
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-ge p1, v4, :cond_6

    .line 495
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_4

    .line 496
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 497
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 499
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    :cond_4
    :goto_1
    return-void

    .line 480
    .end local v3           #slop:I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_3

    .line 481
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    goto :goto_0

    .line 502
    .restart local v3       #slop:I
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_7

    .line 503
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_4

    .line 504
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 505
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 507
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 511
    :cond_7
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 512
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 513
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 514
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v4}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    goto :goto_1
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    .line 366
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 367
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 370
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    if-eqz v4, :cond_1

    .line 374
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 375
    .local v3, rawDragInfo:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 376
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 377
    .local v0, dragInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 378
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 385
    .end local v0           #dragInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #rawDragInfo:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 420
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 421
    .local v1, dragLayerPos:[I
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 422
    .local v2, dragLayerX:I
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 424
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v4

    .line 429
    :pswitch_1
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 430
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 431
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_0

    .line 434
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v4, :cond_0

    .line 435
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_0

    .line 440
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    iget-boolean v6, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-nez v6, :cond_0

    .line 564
    :goto_0
    return v4

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 529
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 530
    .local v1, dragLayerPos:[I
    aget v2, v1, v4

    .line 531
    .local v2, dragLayerX:I
    aget v3, v1, v5

    .line 533
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 564
    goto :goto_0

    .line 536
    :pswitch_0
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 537
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 539
    iget v6, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-lt v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_2

    .line 540
    :cond_1
    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 541
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v7, 0x258

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 543
    :cond_2
    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    goto :goto_1

    .line 547
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 551
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 553
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v4, :cond_3

    .line 555
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_1

    .line 560
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_1

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 622
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 452
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 661
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 626
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "b"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/DragController$DragListener;

    .line 265
    .local v15, listener:Lcom/android/launcher2/DragController$DragListener;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v15, v0, v1, v2}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 268
    .end local v15           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    sub-int v6, v4, p2

    .line 269
    .local v6, registrationX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    sub-int v7, v4, p3

    .line 271
    .local v7, registrationY:I
    if-nez p8, :cond_4

    const/4 v12, 0x0

    .line 272
    .local v12, dragRegionLeft:I
    :goto_1
    if-nez p8, :cond_5

    const/4 v13, 0x0

    .line 274
    .local v13, dragRegionTop:I
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 276
    new-instance v4, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v4}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    add-int v8, p2, v12

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    add-int v8, p3, v13

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v16, v0

    new-instance v3, Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIII)V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 289
    .local v3, dragView:Lcom/android/launcher2/DragView;
    if-eqz p7, :cond_2

    .line 290
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 292
    :cond_2
    if-eqz p8, :cond_3

    .line 293
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/DragView;->show(II)V

    .line 297
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 298
    return-void

    .line 271
    .end local v3           #dragView:Lcom/android/launcher2/DragView;
    .end local v12           #dragRegionLeft:I
    .end local v13           #dragRegionTop:I
    :cond_4
    move-object/from16 v0, p8

    iget v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 272
    .restart local v12       #dragRegionLeft:I
    :cond_5
    move-object/from16 v0, p8

    iget v13, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .locals 14
    .parameter "v"
    .parameter "bmp"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 209
    iget-object v13, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 210
    .local v13, loc:[I
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v13}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 211
    const/4 v1, 0x0

    aget v11, v13, v1

    .line 212
    .local v11, dragLayerX:I
    const/4 v1, 0x1

    aget v12, v13, v1

    .line 213
    .local v12, dragLayerY:I
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/DragLayer;->getmDelt()[I

    move-result-object v10

    .line 214
    .local v10, delt:[I
    const/4 v1, 0x0

    aget v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    const/4 v1, 0x1

    aget v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 215
    sget v1, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 216
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_0
    return-void
.end method
