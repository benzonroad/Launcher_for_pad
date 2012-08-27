.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field public static mLeftRight:I


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field private launcher:Lcom/android/launcher2/Launcher;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mChoiceMode:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 84
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 87
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 97
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 108
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 109
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 126
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 127
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 129
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 131
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    .line 139
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 143
    iput v4, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 159
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 1784
    new-instance v1, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 206
    iput v2, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    move-object v1, p1

    .line 207
    check-cast v1, Lcom/android/launcher2/Launcher;

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->launcher:Lcom/android/launcher2/Launcher;

    .line 208
    sget-object v1, Lcom/android/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 211
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 213
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    .line 215
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    .line 217
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    .line 219
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 221
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 223
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 225
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1324
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1327
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1339
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1340
    iget v2, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 1344
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1345
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1346
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1347
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1348
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1349
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1353
    :cond_0
    return-void

    .line 1344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1079
    sub-float/2addr p1, v1

    .line 1080
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1334
    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 1864
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1868
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1869
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 1876
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 1877
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 1878
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1879
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 1880
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 1881
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 1884
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1885
    .local v7, offset:F
    div-int v2, v9, v6

    .line 1886
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 1887
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1888
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 1889
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1890
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->requestLayout()V

    .line 1896
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1897
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    .line 1893
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 1894
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1084
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1088
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1090
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1094
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1097
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1098
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1099
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1100
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1105
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1102
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1103
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 823
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 825
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 826
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 827
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 829
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 830
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 831
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1554
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 997
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 998
    new-instance v1, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1004
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1051
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1052
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1056
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1057
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1061
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1820
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 438
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 398
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->launcher:Lcom/android/launcher2/Launcher;

    const v5, 0x7f060025

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 399
    .local v1, tabhost:Lcom/android/launcher2/AppsCustomizeTabHost;
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 432
    :cond_2
    :goto_0
    return v2

    .line 406
    :cond_3
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v6, :cond_6

    .line 407
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 408
    iput v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 412
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v4, :cond_4

    .line 413
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 414
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 419
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v3, :cond_5

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 424
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    const/16 v3, 0x1000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 427
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0           #ev:Landroid/view/accessibility/AccessibilityEvent;
    :cond_6
    move v2, v3

    .line 432
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1111
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1113
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1118
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1121
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1122
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1123
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1124
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1129
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1126
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1127
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1007
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1008
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 13
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1019
    iget v11, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1020
    .local v0, pointerIndex:I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1024
    .local v3, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1025
    .local v7, y:F
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v4, v11

    .line 1026
    .local v4, xDiff:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v8, v11

    .line 1027
    .local v8, yDiff:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v11, v3, v11

    float-to-int v11, v11

    sput v11, Lcom/android/launcher2/PagedView;->mLeftRight:I

    .line 1028
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->launcher:Lcom/android/launcher2/Launcher;

    const v12, 0x7f060025

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 1029
    .local v1, tabhost:Lcom/android/launcher2/AppsCustomizeTabHost;
    iget v11, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v11, v11

    mul-float/2addr v11, p2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1030
    .local v2, touchSlop:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v4, v11, :cond_5

    move v6, v10

    .line 1031
    .local v6, xPaged:Z
    :goto_1
    if-le v4, v2, :cond_6

    move v5, v10

    .line 1032
    .local v5, xMoved:Z
    :goto_2
    if-le v8, v2, :cond_2

    move v9, v10

    .line 1034
    .local v9, yMoved:Z
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v9, :cond_0

    .line 1035
    :cond_3
    iget-boolean v11, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_7

    if-eqz v6, :cond_4

    .line 1037
    :goto_3
    iput v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1038
    iget v10, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1039
    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1040
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1041
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v10, v10

    iput v10, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1042
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v10, v10

    const v11, 0x4e6e6b28

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1043
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1046
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v5           #xMoved:Z
    .end local v6           #xPaged:Z
    .end local v9           #yMoved:Z
    :cond_5
    move v6, v9

    .line 1030
    goto :goto_1

    .restart local v6       #xPaged:Z
    :cond_6
    move v5, v9

    .line 1031
    goto :goto_2

    .line 1035
    .restart local v5       #xMoved:Z
    .restart local v9       #yMoved:Z
    :cond_7
    if-eqz v5, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 747
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 750
    .local v2, halfScreenSize:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    add-int v7, v8, v2

    .line 752
    .local v7, screenCenter:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-ne v7, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    if-eqz v8, :cond_1

    .line 753
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 754
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 755
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 760
    .local v5, pageCount:I
    if-lez v5, :cond_3

    .line 761
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 762
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    aget v4, v8, v9

    .line 763
    .local v4, leftScreen:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v6, v8, v9

    .line 764
    .local v6, rightScreen:I
    if-eq v4, v10, :cond_3

    if-eq v6, v10, :cond_3

    .line 765
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 767
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 768
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/launcher2/PagedView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 771
    move v3, v6

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 772
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 771
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 777
    .end local v0           #drawingTime:J
    .end local v3           #i:I
    .end local v4           #leftScreen:I
    .end local v6           #rightScreen:I
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 806
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 817
    :goto_0
    return v0

    .line 811
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1426
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1427
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1428
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1792
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1794
    return-void

    .line 1792
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 845
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 848
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 849
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 859
    :cond_0
    return-void

    .line 852
    :cond_1
    if-eq v2, p0, :cond_0

    .line 855
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 856
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1629
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1633
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 670
    iget v3, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 673
    .local v0, childOffsets:[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 674
    aget v2, v0, p1

    .line 686
    :cond_0
    :goto_1
    return v2

    .line 670
    .end local v0           #childOffsets:[I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 676
    .restart local v0       #childOffsets:[I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 680
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 681
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 683
    :cond_3
    if-eqz v0, :cond_0

    .line 684
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1384
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 1385
    .local v1, minWidth:I
    if-le v1, v0, :cond_0

    .end local v1           #minWidth:I
    :goto_0
    return v1

    .restart local v1       #minWidth:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1925
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1926
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1925
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1537
    const/4 v2, -0x1

    .line 1538
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1539
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1540
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1541
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1542
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1547
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1541
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1547
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 7

    .prologue
    .line 1389
    const v3, 0x7fffffff

    .line 1390
    const/4 v0, -0x1

    .line 1391
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 1392
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 1393
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 1394
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1395
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1396
    div-int/lit8 v2, v2, 0x2

    .line 1397
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 1398
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1399
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 1393
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 1404
    :cond_0
    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 692
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 700
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 695
    .local v1, padding:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 697
    .local v0, offset:I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 715
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 716
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 717
    .local v0, maxWidth:I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 705
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 706
    .local v1, padding:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 708
    .local v0, offset:I
    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    const/high16 v6, 0x3f80

    .line 1064
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1066
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1067
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1070
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1071
    .local v2, scrollProgress:F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1072
    const/high16 v4, -0x4080

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1073
    return v2
.end method

.method protected getScrollingIndicator()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1769
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1771
    const v2, 0x7f06000b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1772
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 1773
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0

    :cond_1
    move v0, v1

    .line 1772
    goto :goto_0
.end method

.method protected getVisiblePages([I)V
    .locals 10
    .parameter "range"

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 722
    .local v1, pageCount:I
    if-lez v1, :cond_2

    .line 723
    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 724
    .local v2, pageWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 725
    .local v4, screenWidth:I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int v5, v6, v2

    .line 726
    .local v5, x:I
    const/4 v0, 0x0

    .line 727
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 728
    .local v3, rightScreen:I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 729
    add-int/lit8 v0, v0, 0x1

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    .line 732
    :cond_0
    move v3, v0

    .line 733
    :goto_1
    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 734
    add-int/lit8 v3, v3, 0x1

    .line 735
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1

    .line 737
    :cond_1
    aput v0, p1, v8

    .line 738
    aput v3, p1, v9

    .line 743
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_2
    return-void

    .line 740
    :cond_2
    aput v6, p1, v8

    .line 741
    aput v6, p1, v9

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 1860
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1823
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1827
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1829
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1830
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1831
    if-eqz p1, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1833
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1836
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1837
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1850
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 882
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 286
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 238
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 239
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 240
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 244
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    .line 248
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 651
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 652
    .local v0, count:I
    if-nez v0, :cond_1

    .line 653
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 654
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 655
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 667
    :cond_0
    return-void

    .line 659
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 660
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 661
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 662
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 664
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 665
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 1717
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1718
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1721
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 1723
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1730
    iput v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1733
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1737
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 1741
    if-le p1, v2, :cond_2

    .line 1742
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1746
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1747
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1748
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 1749
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1753
    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1755
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->launcher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 1756
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIDGETS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumAppsPages()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_4

    .line 1757
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumWidgetPages()I

    move-result v1

    .line 1758
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumAppsPages()I

    move-result v2

    .line 1759
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmScro()Lcom/android/launcher2/ScrollBar;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher2/ScrollBar;->scrollLeftOrRight(III)V

    .line 1762
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1781
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1597
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 10
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1599
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v6, :cond_5

    .line 1600
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1601
    .local v1, count:I
    if-ge p1, v1, :cond_5

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 1603
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 1606
    .local v5, upperPageBound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1607
    if-eq v2, p1, :cond_1

    if-eqz p2, :cond_1

    .line 1606
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    .line 1611
    .local v3, layout:Lcom/android/launcher2/Page;
    invoke-interface {v3}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v0

    .line 1612
    .local v0, childCount:I
    if-gt v4, v2, :cond_3

    if-gt v2, v5, :cond_3

    .line 1613
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1614
    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {p0, v2, v6}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 1615
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v6, v8

    .line 1614
    goto :goto_2

    .line 1618
    :cond_3
    if-lez v0, :cond_4

    .line 1619
    invoke-interface {v3}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1621
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1626
    .end local v0           #childCount:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/android/launcher2/Page;
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_5
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 324
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1319
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1301
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1302
    const/4 v1, 0x0

    .line 1303
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1308
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1309
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1310
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1314
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1305
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1306
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1312
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1932
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1915
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1916
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1917
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 1918
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1919
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1920
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1922
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1909
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1910
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1911
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 899
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 990
    :cond_0
    :goto_0
    return v5

    .line 909
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 910
    .local v0, action:I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 915
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 990
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 921
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_4

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 933
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 934
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 936
    .local v4, y:F
    iput v2, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 937
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 938
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 939
    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 940
    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 941
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 942
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 949
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 950
    .local v3, xDist:I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_6

    :cond_5
    move v1, v5

    .line 951
    .local v1, finishedScrolling:Z
    :goto_2
    if-eqz v1, :cond_7

    .line 952
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 953
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 960
    :goto_3
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 961
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 962
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 963
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1           #finishedScrolling:Z
    :cond_6
    move v1, v6

    .line 950
    goto :goto_2

    .line 955
    .restart local v1       #finishedScrolling:Z
    :cond_7
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 964
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 965
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .line 974
    .end local v1           #finishedScrolling:Z
    .end local v2           #x:F
    .end local v3           #xDist:I
    .end local v4           #y:F
    :pswitch_3
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 975
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 976
    iput v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 977
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 981
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 982
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 571
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    add-int v8, v9, v10

    .line 577
    .local v8, verticalPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 578
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 579
    .local v3, childLeft:I
    if-lez v1, :cond_2

    .line 582
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 585
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    if-gez v9, :cond_2

    .line 586
    sub-int v9, p4, p2

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 590
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 591
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 594
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 595
    .local v2, childHeight:I
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    .line 596
    .local v4, childTop:I
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v9, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    .line 601
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 603
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 590
    .end local v2           #childHeight:I
    .end local v4           #childTop:I
    .end local v5           #childWidth:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 607
    .end local v0           #child:Landroid/view/View;
    :cond_5
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 608
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 609
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 610
    .local v7, newX:I
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 611
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9, v7}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 612
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 613
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 616
    .end local v7           #newX:I
    :cond_6
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 617
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 443
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 517
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 448
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 449
    .local v16, widthSize:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    .line 450
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 458
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 459
    .local v8, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 460
    .local v9, heightSize:I
    const/4 v13, 0x0

    .line 462
    .local v13, maxChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 463
    .local v14, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 469
    .local v10, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 470
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v3, :cond_4

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 473
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 476
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 477
    const/high16 v7, -0x8000

    .line 483
    .local v7, childWidthMode:I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 484
    const/high16 v5, -0x8000

    .line 489
    .local v5, childHeightMode:I
    :goto_3
    sub-int v17, v16, v10

    move/from16 v0, v17

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 491
    .local v6, childWidthMeasureSpec:I
    sub-int v17, v9, v14

    move/from16 v0, v17

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 494
    .local v4, childHeightMeasureSpec:I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 495
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 470
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 479
    .end local v4           #childHeightMeasureSpec:I
    .end local v5           #childHeightMode:I
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childWidthMode:I
    :cond_2
    const/high16 v7, 0x4000

    .restart local v7       #childWidthMode:I
    goto :goto_2

    .line 486
    :cond_3
    const/high16 v5, 0x4000

    .restart local v5       #childHeightMode:I
    goto :goto_3

    .line 500
    .end local v2           #child:Landroid/view/View;
    .end local v5           #childHeightMode:I
    .end local v7           #childWidthMode:I
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 501
    add-int v9, v13, v14

    .line 504
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 512
    if-lez v3, :cond_6

    .line 513
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v17

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 515
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 347
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V

    .line 352
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 792
    iget v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 793
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 797
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 798
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 799
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 801
    :goto_1
    return v2

    .line 795
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0

    .line 801
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    if-gtz v17, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 1290
    :goto_0
    return v17

    .line 1149
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1153
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1290
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1159
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1164
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1165
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1166
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1167
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1174
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1177
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1178
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v18, v0

    add-float v17, v17, v18

    sub-float v5, v17, v16

    .line 1180
    .local v5, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1185
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_4

    .line 1186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 1189
    float-to-int v0, v5

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1194
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1195
    float-to-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1192
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 1197
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1200
    .end local v5           #deltaX:F
    .end local v11           #pointerIndex:I
    .end local v16           #x:F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1205
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1206
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1207
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1208
    .restart local v11       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1209
    .restart local v16       #x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1210
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1211
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1212
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 1213
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    .line 1214
    .local v10, pageWidth:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ecccccd

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    const/4 v8, 0x1

    .line 1216
    .local v8, isSignificantMove:Z
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 1218
    .local v13, snapVelocity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    const/high16 v18, 0x41c8

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v13, :cond_a

    const/4 v7, 0x1

    .line 1226
    .local v7, isFling:Z
    :goto_4
    const/4 v12, 0x0

    .line 1227
    .local v12, returnToOriginalPage:Z
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ea8f5c3

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    int-to-float v0, v15

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    int-to-float v0, v5

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_6

    if-eqz v7, :cond_6

    .line 1229
    const/4 v12, 0x1

    .line 1236
    :cond_6
    if-eqz v8, :cond_7

    if-lez v5, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v7, :cond_c

    if-lez v15, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1238
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1239
    .local v6, finalPage:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 1271
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v6           #finalPage:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1272
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1273
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1214
    .restart local v4       #activePointerId:I
    .restart local v5       #deltaX:I
    .restart local v10       #pageWidth:I
    .restart local v11       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v16       #x:F
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1220
    .restart local v8       #isSignificantMove:Z
    .restart local v13       #snapVelocity:I
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 1238
    .restart local v7       #isFling:Z
    .restart local v12       #returnToOriginalPage:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0x1

    goto :goto_5

    .line 1240
    :cond_c
    if-eqz v8, :cond_d

    if-gez v5, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    if-eqz v7, :cond_10

    if-gez v15, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 1243
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1244
    .restart local v6       #finalPage:I
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1243
    .end local v6           #finalPage:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    goto :goto_7

    .line 1246
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1248
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1252
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1253
    .local v9, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    .line 1254
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1256
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1258
    .end local v9           #nextPage:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1263
    .restart local v9       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_14

    .line 1264
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1266
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1269
    .end local v9           #nextPage:I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1277
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1280
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1281
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1286
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1355
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 647
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 648
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1134
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 331
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 338
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1359
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1361
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1362
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1364
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 782
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 783
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 784
    const/4 v1, 0x1

    .line 786
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 869
    if-eqz p1, :cond_0

    .line 872
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 873
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 875
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 876
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 6
    .parameter "screenCenter"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 625
    :cond_0
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_3

    .line 626
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 627
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 628
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 630
    .local v3, scrollProgress:F
    const/high16 v4, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 631
    .local v0, alpha:F
    invoke-virtual {v1, v0}, Landroid/view/View;->setFastAlpha(F)V

    .line 632
    invoke-virtual {v1}, Landroid/view/View;->fastInvalidate()V

    .line 626
    .end local v0           #alpha:F
    .end local v3           #scrollProgress:F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v1           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 637
    .end local v2           #i:I
    :cond_3
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 370
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 371
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 375
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 377
    if-gez p1, :cond_1

    .line 378
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 379
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 380
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 392
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 393
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 394
    return-void

    .line 382
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 383
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 384
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 385
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 388
    :cond_2
    iput p1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 389
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .parameter "newCurrentPage"

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 521
    .local v2, newX:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    sub-int v0, v2, v5

    .line 523
    .local v0, delta:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 524
    .local v4, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 525
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 526
    .local v3, page:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v3           #page:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 529
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 315
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 263
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 11
    .parameter "childrenScale"

    .prologue
    const/high16 v8, 0x4000

    .line 535
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 540
    .local v1, childCount:I
    new-array v2, v1, [F

    .line 541
    .local v2, childrenX:[F
    new-array v3, v1, [F

    .line 542
    .local v3, childrenY:[F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 543
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 544
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v3, v5

    .line 542
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 548
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 549
    .local v6, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 550
    .local v4, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 551
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 552
    iget v7, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTop:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mRight:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher2/PagedView;->layout(IIII)V

    .line 553
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 554
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 555
    .restart local v0       #child:Landroid/view/View;
    aget v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 556
    aget v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 553
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 561
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 562
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 363
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 565
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 567
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1797
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1801
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1803
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1804
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1805
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1806
    if-eqz p1, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1809
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1810
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1811
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1408
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1409
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1469
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1470
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1473
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1479
    .local v1, newX:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 1480
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1481
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1482
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1485
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1487
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1488
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1494
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 1495
    if-nez p3, :cond_4

    .line 1496
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1499
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1504
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 1505
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1509
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1510
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1511
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->launcher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 1512
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIDGETS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumAppsPages()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-eq v1, v2, :cond_2

    .line 1513
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumWidgetPages()I

    move-result v1

    .line 1514
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumAppsPages()I

    move-result v2

    .line 1515
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    .line 1516
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getmScro()Lcom/android/launcher2/ScrollBar;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher2/ScrollBar;->scrollLeftOrRight(III)V

    .line 1518
    :cond_2
    return-void

    .line 1507
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_1

    :cond_4
    move v5, p3

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 1432
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1433
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1438
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1439
    iget v3, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v2, v3

    .line 1442
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xfa

    if-ge v3, v4, :cond_0

    .line 1445
    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1466
    :goto_0
    return-void

    .line 1453
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1454
    int-to-float v4, v1

    int-to-float v1, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1457
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1458
    const/16 v4, 0x898

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1463
    const/high16 v4, 0x447a

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1465
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 295
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 296
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 297
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 298
    return-void
.end method
