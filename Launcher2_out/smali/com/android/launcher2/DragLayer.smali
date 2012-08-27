.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragLayer$LayoutParams;
    }
.end annotation


# instance fields
.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

.field private mDelt:[I

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Landroid/view/View;

.field private mDropViewAlpha:F

.field private mDropViewPos:[I

.field private mDropViewScale:F

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mQsbIndex:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpXY:[I

.field private mWorkspaceIndex:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 62
    iput-object v3, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 63
    iput-object v3, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 65
    iput-object v3, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    .line 67
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropViewPos:[I

    .line 70
    iput-boolean v5, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 72
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 73
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    .line 74
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mDelt:[I

    .line 89
    invoke-virtual {p0, v5}, Lcom/android/launcher2/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragLayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropViewPos:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mDropViewScale:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mDropViewAlpha:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/DragLayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method private animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V
    .locals 13
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"
    .parameter "finalScale"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"
    .parameter "duration"

    .prologue
    .line 500
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p3

    invoke-direct {v4, p2, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 502
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 503
    .local v5, to:Landroid/graphics/Rect;
    const/high16 v6, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v7, p6

    move/from16 v8, p9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 504
    return-void
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 599
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 602
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$4;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$5;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 618
    return-void

    .line 600
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "intercept"

    .prologue
    const/4 v6, 0x1

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v2, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 122
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 124
    .local v5, y:I
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 125
    .local v0, child:Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 129
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    .line 130
    iput v5, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/launcher2/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 152
    .end local v0           #child:Lcom/android/launcher2/AppWidgetResizeFrame;
    :goto_0
    return v6

    .line 137
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 138
    .local v1, currentFolder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->isFolderClingVisible()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    .line 139
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 147
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 148
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 152
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "folder"
    .parameter "ev"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "folder"
    .parameter "ev"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 4
    .parameter "isEditingName"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    if-eqz p1, :cond_1

    const v1, 0x7f0c0053

    .line 207
    .local v1, stringId:I
    :goto_0
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 209
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 210
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 213
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #stringId:I
    :cond_0
    return-void

    .line 206
    :cond_1
    const v1, 0x7f0c0052

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 635
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    .line 637
    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 8
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v7, -0x1

    .line 405
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V

    .line 408
    .local v0, resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    new-instance v6, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 409
    .local v6, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 411
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 415
    return-void
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .locals 17
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "finalAlpha"
    .parameter "finalScale"
    .parameter "duration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"

    .prologue
    .line 529
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 531
    .local v13, dist:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 532
    .local v15, res:Landroid/content/res/Resources;
    const v3, 0x7f09001e

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v14, v3

    .line 535
    .local v14, maxDist:F
    if-gez p6, :cond_0

    .line 536
    const v3, 0x7f09001c

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    .line 537
    cmpg-float v3, v13, v14

    if-gez v3, :cond_0

    .line 538
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v5, v13, v14

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p6, v0

    .line 542
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 546
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 550
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v12

    .line 552
    .local v12, initialAlpha:F
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 553
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 554
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 557
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v3, Lcom/android/launcher2/DragLayer$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher2/DragLayer$2;-><init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher2/DragLayer$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher2/DragLayer$3;-><init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 595
    return-void

    .line 558
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 18
    .parameter "dragView"
    .parameter "child"
    .parameter "duration"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 442
    .local v15, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v16, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 445
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 446
    .local v13, coord:[I
    const/4 v3, 0x0

    iget v4, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    aput v4, v13, v3

    .line 447
    const/4 v3, 0x1

    iget v4, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    aput v4, v13, v3

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v9

    .line 451
    .local v9, scale:F
    const/4 v3, 0x0

    aget v7, v13, v3

    .line 452
    .local v7, toX:I
    const/4 v3, 0x1

    aget v8, v13, v3

    .line 453
    .local v8, toY:I
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v17, p2

    .line 454
    check-cast v17, Landroid/widget/TextView;

    .line 455
    .local v17, tv:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v14, v3, v4

    .line 458
    .local v14, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 473
    .end local v14           #d:Landroid/graphics/drawable/Drawable;
    .end local v17           #tv:Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 474
    .local v5, fromX:I
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 475
    .local v6, fromY:I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 476
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 477
    new-instance v10, Lcom/android/launcher2/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v10, v0, v1, v2}, Lcom/android/launcher2/DragLayer$1;-><init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 493
    .local v10, onCompleteRunnable:Ljava/lang/Runnable;
    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V

    .line 495
    return-void

    .line 462
    .end local v5           #fromX:I
    .end local v6           #fromY:I
    .end local v10           #onCompleteRunnable:Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 464
    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 434
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFLjava/lang/Runnable;)V
    .locals 11
    .parameter "dragView"
    .parameter "pos"
    .parameter "scale"
    .parameter "onFinishRunnable"

    .prologue
    const/4 v8, 0x1

    .line 423
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 424
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 425
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 426
    .local v2, fromX:I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 428
    .local v3, fromY:I
    const/4 v0, 0x0

    aget v4, p2, v0

    aget v5, p2, v8

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V

    .line 430
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 389
    .local v0, frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 391
    .end local v0           #frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 393
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 666
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 667
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 670
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 671
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropViewPos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int v2, v4, v5

    .line 672
    .local v2, xPos:I
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropViewPos:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int v3, v4, v5

    .line 673
    .local v3, yPos:I
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 674
    .local v1, width:I
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 675
    .local v0, height:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 676
    iget v4, p0, Lcom/android/launcher2/DragLayer;->mDropViewScale:F

    sub-float v4, v6, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    iget v5, p0, Lcom/android/launcher2/DragLayer;->mDropViewScale:F

    sub-float v5, v6, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 677
    iget v4, p0, Lcom/android/launcher2/DragLayer;->mDropViewScale:F

    iget v5, p0, Lcom/android/launcher2/DragLayer;->mDropViewScale:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 678
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    iget v5, p0, Lcom/android/launcher2/DragLayer;->mDropViewAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 679
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 682
    .end local v0           #height:I
    .end local v1           #width:I
    .end local v2           #xPos:I
    .end local v3           #yPos:I
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    const/4 v1, -0x1

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildDrawingOrder(II)I

    move-result p2

    .line 660
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 647
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isDrawingBackgroundGradient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    if-ne p2, v0, :cond_2

    .line 656
    iget p2, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    goto :goto_0

    .line 657
    :cond_2
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    if-ne p2, v0, :cond_0

    .line 658
    iget p2, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 285
    const/high16 v1, 0x3f80

    .line 286
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 287
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 289
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 290
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 291
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDelt:[I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v7

    .line 292
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDelt:[I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v8

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 294
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 295
    check-cast v2, Landroid/view/View;

    .line 296
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 298
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 299
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 300
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 301
    goto :goto_0

    .line 302
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 303
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 304
    return v1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "descendant"
    .parameter "r"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 263
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 264
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 265
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)V
    .locals 2
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 271
    aput v1, p2, v1

    .line 272
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 274
    return-void
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 309
    .local v1, loc:[I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->getLocationInWindow([I)V

    .line 310
    aget v5, v1, v8

    .line 311
    .local v5, x:I
    aget v6, v1, v9

    .line 313
    .local v6, y:I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 314
    aget v3, v1, v8

    .line 315
    .local v3, vX:I
    aget v4, v1, v9

    .line 317
    .local v4, vY:I
    sub-int v0, v3, v5

    .line 318
    .local v0, left:I
    sub-int v2, v4, v6

    .line 319
    .local v2, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    return-void
.end method

.method public getmDelt()[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDelt:[I

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 168
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 169
    .local v1, currentFolder:Lcom/android/launcher2/Folder;
    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 188
    :goto_1
    :pswitch_1
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 189
    .local v2, isOverFolder:Z
    if-nez v2, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v5, :cond_4

    .line 190
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 191
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    move v3, v4

    .line 192
    goto :goto_0

    .line 177
    .end local v2           #isOverFolder:Z
    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 178
    .restart local v2       #isOverFolder:Z
    if-nez v2, :cond_2

    .line 179
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 180
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    move v3, v4

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    if-eqz v2, :cond_3

    .line 183
    iput-boolean v3, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    :cond_3
    move v3, v4

    .line 185
    goto :goto_0

    .line 193
    :cond_4
    if-eqz v2, :cond_5

    .line 194
    iput-boolean v3, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_5
    move v3, v4

    .line 196
    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 372
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 374
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 375
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 378
    check-cast v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 379
    .local v4, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 380
    iget v5, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 374
    .end local v4           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 227
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 228
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 230
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v4

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v5, :cond_2

    .line 239
    const/4 v1, 0x1

    .line 240
    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 242
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 246
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 247
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 622
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 623
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    .line 624
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 629
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    .line 630
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "launcher"
    .parameter "controller"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 95
    iput-object p2, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    .line 96
    return-void
.end method
