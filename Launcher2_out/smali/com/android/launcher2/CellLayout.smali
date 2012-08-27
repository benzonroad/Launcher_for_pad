.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Point;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDragOverlapping:Z

.field private mLastDownOnOccupiedCell:Z

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingTransformsDirty:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field private final mTmpPointF:Landroid/graphics/PointF;

.field private final mTmpXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 147
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 75
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 76
    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 80
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 81
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 82
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 83
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 86
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 90
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 91
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    .line 93
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 95
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 107
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 108
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 112
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 118
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 119
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 125
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 127
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 131
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 133
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 151
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 153
    sget-object v12, Lcom/android/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 155
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellWidth:I

    .line 157
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellHeight:I

    .line 159
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 160
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 161
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    .line 162
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 163
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 164
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 166
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 172
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f020023

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    const v12, 0x7f020024

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 175
    const v12, 0x7f020080

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 176
    const v12, 0x7f020081

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 177
    const v12, 0x7f0a0018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 185
    const v12, 0x7f02001d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 189
    const v12, 0x7f090018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 190
    .local v5, animDuration:I
    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 200
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    new-instance v13, Landroid/graphics/Point;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v12, v8

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const v12, 0x7f09001a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 209
    .local v6, duration:I
    const/4 v7, 0x0

    .line 210
    .local v7, fromAlphaValue:F
    const v12, 0x7f09001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 212
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 214
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 215
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 217
    .local v4, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    move v10, v8

    .line 219
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 255
    .end local v4           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 256
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 258
    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 261
    return-void

    .line 91
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 1567
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1568
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1569
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1567
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1572
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 727
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 728
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 729
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 730
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 731
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 732
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1545
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 1546
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 1547
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1548
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1549
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1550
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1551
    :goto_5
    if-nez v0, :cond_3

    .line 1555
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1556
    aput v3, p0, v6

    .line 1557
    aput v4, p0, v5

    .line 1563
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_6
    return v5

    .restart local v3       #x:I
    :cond_1
    move v0, v6

    .line 1547
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1550
    goto :goto_5

    .line 1549
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1548
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1546
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1545
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #x:I
    :cond_7
    move v5, v6

    .line 1563
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 288
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 289
    .local v0, cellHeight:I
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v2

    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 292
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    int-to-float v3, v0

    invoke-static {p0, v3}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .locals 6
    .parameter "icon"

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 308
    .local v0, padding:I
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 312
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1643
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1644
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1645
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1643
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1648
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method static px2dp(Landroid/content/res/Resources;F)I
    .locals 3
    .parameter "r"
    .parameter "pxValue"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1482
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1483
    .local v1, actualWidth:I
    const v5, 0x7f0a000a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1484
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1487
    .local v2, smallerSize:I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1488
    .local v3, spanX:I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 1490
    .local v4, spanY:I
    if-nez p3, :cond_0

    .line 1491
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3
    aput v3, p3, v7

    aput v4, p3, v8

    .line 1495
    :goto_0
    return-object p3

    .line 1493
    .restart local p3
    :cond_0
    aput v3, p3, v7

    .line 1494
    aput v4, p3, v8

    goto :goto_0
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 954
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 955
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :cond_0
    return-void
.end method

.method private setFastChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 961
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFastAlpha(F)V

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_0
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 277
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 278
    .local v0, cellWidth:I
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v2

    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    int-to-float v3, v0

    invoke-static {p0, v3}, Lcom/android/launcher2/CellLayout;->px2dp(Landroid/content/res/Resources;F)I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    .line 570
    move-object v0, p4

    .line 574
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    .line 577
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 578
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 580
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 582
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 584
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 586
    :cond_2
    const/4 v1, 0x1

    .line 588
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 973
    invoke-virtual {v5, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p2

    aget-boolean v0, v0, p3

    if-nez v0, :cond_1

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 978
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 980
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_0
    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 984
    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 985
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    iget v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v7, v7, v8

    iget v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput-boolean v4, v7, v8

    .line 986
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v7, v7, p2

    aput-boolean v3, v7, p3

    .line 988
    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 989
    iput p2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput p2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 990
    iput p3, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput p3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 991
    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 992
    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 993
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 994
    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 996
    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 997
    iput v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1000
    const-string v7, "x"

    new-array v8, v9, [I

    aput v2, v8, v4

    aput v1, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1001
    const-string v2, "y"

    new-array v7, v9, [I

    aput v6, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1002
    new-array v5, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1003
    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1004
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v2, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1010
    new-instance v2, Lcom/android/launcher2/CellLayout$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/CellLayout$5;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1027
    int-to-long v4, p5

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1028
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v0, v3

    .line 1031
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 649
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 1512
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 1513
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .local v1, minWidth:I
    move-object v3, p1

    .line 1514
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 1523
    .local v0, minHeight:I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 1524
    .local v2, spans:[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1525
    aget v3, v2, v4

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1526
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    .end local v2           #spans:[I
    :goto_1
    return-void

    .line 1515
    :cond_0
    instance-of v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 1516
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .restart local v1       #minWidth:I
    move-object v3, p1

    .line 1517
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .restart local v0       #minHeight:I
    goto :goto_0

    .line 1520
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    :cond_1
    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 549
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 550
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 551
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 798
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 800
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 801
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 802
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 782
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 784
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 785
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 786
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 15
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "resultRect"

    .prologue
    .line 1450
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 1451
    .local v2, cellWidth:I
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 1452
    .local v1, cellHeight:I
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1453
    .local v8, widthGap:I
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 1455
    .local v5, heightGap:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 1456
    .local v3, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v6

    .line 1458
    .local v6, vStartPadding:I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 1459
    .local v7, width:I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 1461
    .local v4, height:I
    add-int v11, v2, v8

    mul-int v11, v11, p1

    add-int v9, v3, v11

    .line 1462
    .local v9, x:I
    add-int v11, v1, v5

    mul-int v11, v11, p2

    add-int v10, v6, v11

    .line 1464
    .local v10, y:I
    int-to-float v11, v9

    int-to-float v12, v10

    add-int v13, v9, v7

    int-to-float v13, v13

    add-int v14, v10, v4

    int-to-float v14, v14

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1465
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1675
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1137
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1138
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1139
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1140
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1141
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 534
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 535
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 537
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 507
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 509
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 510
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 511
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 514
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 297
    return-void
.end method

.method findCellForSpan([III)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1286
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"

    .prologue
    const/4 v4, -0x1

    .line 1300
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1317
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 12
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"
    .parameter "ignoreView"

    .prologue
    .line 1327
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1329
    const/4 v3, 0x0

    .line 1331
    .local v3, foundCell:Z
    :goto_0
    const/4 v6, 0x0

    .line 1332
    .local v6, startX:I
    if-ltz p4, :cond_0

    .line 1333
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1335
    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1336
    .local v1, endX:I
    if-ltz p4, :cond_1

    .line 1337
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1339
    :cond_1
    const/4 v7, 0x0

    .line 1340
    .local v7, startY:I
    if-ltz p5, :cond_2

    .line 1341
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1343
    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1344
    .local v2, endY:I
    if-ltz p5, :cond_3

    .line 1345
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    if-ne p3, v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1348
    :cond_3
    move v9, v7

    .local v9, y:I
    :goto_3
    if-ge v9, v2, :cond_b

    if-nez v3, :cond_b

    .line 1350
    move v8, v6

    .local v8, x:I
    :goto_4
    if-ge v8, v1, :cond_a

    .line 1351
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, p2, :cond_8

    .line 1352
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    if-ge v5, p3, :cond_7

    .line 1353
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    .line 1356
    add-int/2addr v8, v4

    .line 1350
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1337
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1345
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1352
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1351
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1361
    .end local v5           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1362
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1363
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1365
    :cond_9
    const/4 v3, 0x1

    .line 1348
    .end local v4           #i:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1369
    .end local v8           #x:I
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_c

    .line 1381
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1382
    return v3

    .line 1374
    :cond_c
    const/16 p4, -0x1

    .line 1375
    const/16 p5, -0x1

    .line 1376
    goto/16 :goto_0
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 21
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1183
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p3, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p1, v0

    .line 1184
    move/from16 v0, p2

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p4, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p2, v0

    .line 1187
    if-eqz p7, :cond_1

    move-object/from16 v4, p7

    .line 1188
    .local v4, bestXY:[I
    :goto_0
    const-wide v2, 0x7fefffffffffffffL

    .line 1190
    .local v2, bestDistance:D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1191
    .local v6, countX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1192
    .local v7, countY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1194
    .local v12, occupied:[[Z
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    add-int/lit8 v15, p4, -0x1

    sub-int v15, v7, v15

    if-ge v14, v15, :cond_6

    .line 1196
    const/4 v13, 0x0

    .local v13, x:I
    :goto_2
    add-int/lit8 v15, p3, -0x1

    sub-int v15, v6, v15

    if-ge v13, v15, :cond_5

    .line 1197
    if-eqz p6, :cond_4

    .line 1198
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 1199
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v11, v0, :cond_3

    .line 1200
    add-int v15, v13, v10

    aget-object v15, v12, v15

    add-int v16, v14, v11

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_2

    .line 1203
    add-int/2addr v13, v10

    .line 1196
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1187
    .end local v2           #bestDistance:D
    .end local v4           #bestXY:[I
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v12           #occupied:[[Z
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_1
    const/4 v15, 0x2

    new-array v4, v15, [I

    goto :goto_0

    .line 1199
    .restart local v2       #bestDistance:D
    .restart local v4       #bestXY:[I
    .restart local v6       #countX:I
    .restart local v7       #countY:I
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #occupied:[[Z
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1198
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1209
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 1210
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 1212
    const/4 v15, 0x0

    aget v15, v5, v15

    sub-int v15, v15, p1

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const/16 v17, 0x1

    aget v17, v5, v17

    sub-int v17, v17, p2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 1214
    .local v8, distance:D
    cmpg-double v15, v8, v2

    if-gtz v15, :cond_0

    .line 1215
    move-wide v2, v8

    .line 1216
    const/4 v15, 0x0

    aput v13, v4, v15

    .line 1217
    const/4 v15, 0x1

    aput v14, v4, v15

    goto :goto_5

    .line 1194
    .end local v5           #cellXY:[I
    .end local v8           #distance:D
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1222
    .end local v13           #x:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1225
    const-wide v15, 0x7fefffffffffffffL

    cmpl-double v15, v2, v15

    if-nez v15, :cond_7

    .line 1226
    const/4 v15, 0x0

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1227
    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1229
    :cond_7
    return-object v4
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1265
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "result"

    .prologue
    .line 1247
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1158
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1670
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1680
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 1656
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 1651
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1583
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1584
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1587
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 1586
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1589
    :cond_1
    if-eqz v0, :cond_4

    .line 1593
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 1594
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1595
    const/4 v0, 0x0

    .line 1596
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1597
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1596
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1590
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1584
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1599
    :cond_5
    if-eqz v0, :cond_8

    .line 1603
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 1604
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v2, v4, :cond_a

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1607
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 1606
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1600
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1594
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1609
    :cond_9
    if-eqz v0, :cond_c

    .line 1613
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 1614
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_e

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 1617
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 1616
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1610
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1619
    :cond_d
    if-eqz v0, :cond_f

    .line 1622
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 1620
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1614
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 737
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1539
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .parameter "fra"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 525
    return-void
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1633
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1639
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 654
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 655
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1397
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1398
    return-void
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1407
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1408
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1411
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1418
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1419
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1420
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1422
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1423
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 392
    .local v9, bg:Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x437f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 394
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 397
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 399
    .local v13, countX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 401
    .local v14, countY:I
    const v5, 0x3ecccccd

    .line 402
    .local v5, MAX_ALPHA:F
    const/16 v6, 0x258

    .line 403
    .local v6, MAX_VISIBLE_DISTANCE:I
    const v4, 0x3b03126f

    .line 405
    .local v4, DISTANCE_MULTIPLIER:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    .local v15, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 407
    .local v24, width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 409
    .local v18, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v24, 0x2

    sub-int v25, v27, v28

    .line 410
    .local v25, x:I
    const/4 v12, 0x0

    .local v12, col:I
    :goto_1
    if-gt v12, v13, :cond_4

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v18, 0x2

    sub-int v26, v27, v28

    .line 412
    .local v26, y:I
    const/16 v23, 0x0

    .local v23, row:I
    :goto_2
    move/from16 v0, v23

    if-gt v0, v14, :cond_3

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v25, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/PointF;->set(FF)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/PointF;->length()F

    move-result v16

    .line 416
    .local v16, dist:F
    const v27, 0x3ecccccd

    const v28, 0x3b03126f

    const/high16 v29, 0x4416

    sub-float v29, v29, v16

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 418
    .local v7, alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_1

    .line 419
    add-int v27, v25, v24

    add-int v28, v26, v18

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    const/high16 v27, 0x437f

    mul-float v27, v27, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v26, v26, v27

    .line 412
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 389
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v7           #alpha:F
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #dist:F
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v9       #bg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 425
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v4       #DISTANCE_MULTIPLIER:F
    .restart local v5       #MAX_ALPHA:F
    .restart local v6       #MAX_VISIBLE_DISTANCE:I
    .restart local v12       #col:I
    .restart local v13       #countX:I
    .restart local v14       #countY:I
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    .restart local v18       #height:I
    .restart local v23       #row:I
    .restart local v24       #width:I
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v25, v25, v27

    .line 410
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 429
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 430
    .local v22, paint:Landroid/graphics/Paint;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v27, v0

    aget v7, v27, v19

    .line 432
    .restart local v7       #alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_5

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    aget-object v20, v27, v19

    .line 434
    .local v20, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v27, v0

    aget-object v27, v27, v19

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 435
    .local v8, b:Landroid/graphics/Bitmap;
    const/high16 v27, 0x3f00

    add-float v27, v27, v7

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 436
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 430
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v20           #p:Landroid/graphics/Point;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 442
    .end local v7           #alpha:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v21

    .line 444
    .local v21, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 445
    .restart local v8       #b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    sub-int v27, v27, v21

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v29

    add-int v28, v28, v29

    sub-int v28, v28, v21

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 454
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v21           #padding:I
    :cond_7
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 458
    .local v17, fra:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    sget-object v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 460
    .restart local v24       #width:I
    move/from16 v18, v24

    .line 461
    .restart local v18       #height:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 464
    .local v10, centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 466
    .local v11, centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 467
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v18, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 468
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    sget-object v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 475
    move/from16 v18, v24

    .line 476
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 481
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 454
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 487
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v17           #fra:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    if-ltz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    if-ltz v27, :cond_9

    .line 488
    sget-object v15, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 489
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 490
    .restart local v24       #width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 492
    .restart local v18       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 494
    .restart local v10       #centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 496
    .restart local v11       #centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 502
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_9
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    .line 1434
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1435
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1436
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1438
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 712
    .local v0, action:I
    if-nez v0, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    const/4 v1, 0x1

    .line 723
    :goto_0
    return v1

    .line 720
    :cond_1
    if-nez v0, :cond_2

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 723
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 888
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 889
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const/4 v1, 0x0

    .line 836
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 837
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 839
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 840
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 842
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 843
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v0, v0, -0x1

    .line 847
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v5, v5, -0x1

    .line 849
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    if-gez v6, :cond_5

    .line 850
    :cond_2
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 851
    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v7, v8

    .line 852
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mOriginalCellWidth:I

    mul-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 853
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mOriginalCellHeight:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 854
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    if-lez v0, :cond_3

    div-int v0, v6, v0

    :goto_0
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 855
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    if-lez v5, :cond_4

    div-int v0, v7, v5

    :goto_1
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 865
    :goto_2
    const/high16 v0, -0x8000

    if-ne v4, v0, :cond_7

    .line 866
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 868
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 870
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 873
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    .line 874
    :goto_4
    if-ge v1, v3, :cond_6

    .line 875
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 876
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 878
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 880
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v0, v1

    .line 854
    goto :goto_0

    :cond_4
    move v0, v1

    .line 855
    goto :goto_1

    .line 858
    :cond_5
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 859
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    goto :goto_2

    .line 882
    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 883
    return-void

    :cond_7
    move v0, v2

    move v2, v3

    goto :goto_3
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 7
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 1625
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1626
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1627
    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    .line 1628
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 939
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 898
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 899
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 901
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 748
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 750
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 751
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 753
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 754
    .local v2, xAxis:I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 756
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 757
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 758
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 759
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 760
    :cond_3
    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 594
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 595
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 603
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 613
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 619
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 625
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 629
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 633
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 637
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 641
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 365
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 366
    const/high16 v0, 0x44a0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 369
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 373
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 944
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 945
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 930
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 931
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 932
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 0
    .parameter "multiplier"

    .prologue
    .line 922
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 923
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 906
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 911
    return-void
.end method

.method public setFastAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setFastChildrenAlpha(F)V

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFastAlpha(F)V

    .line 950
    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 918
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 919
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 531
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 300
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 301
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 302
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 304
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 348
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 351
    :cond_0
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 558
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 315
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 321
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 322
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 324
    return-void

    .line 317
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 359
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 330
    .local v0, oldIcon:Lcom/android/launcher2/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 337
    :cond_1
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v12, 0x1

    .line 658
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 659
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 660
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 661
    .local v8, x:I
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 662
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 664
    .local v3, count:I
    const/4 v4, 0x0

    .line 665
    .local v4, found:Z
    add-int/lit8 v6, v3, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 666
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 669
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_0
    iget-boolean v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_3

    .line 671
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 676
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 678
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 679
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 680
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 681
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 682
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 683
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 684
    const/4 v4, 0x1

    .line 690
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 692
    if-nez v4, :cond_2

    .line 693
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 694
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 696
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 697
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 698
    aget v10, v1, v12

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 699
    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 700
    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 702
    .end local v1           #cellXY:[I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 703
    return-void

    .line 665
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .parameter "fra"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "v"
    .parameter "dragOutline"
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1068
    .local v12, oldDragCellX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 1069
    .local v13, oldDragCellY:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v11

    .line 1070
    .local v11, nearest:[I
    if-eqz p1, :cond_1

    if-nez p7, :cond_1

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1076
    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1134
    :cond_0
    :goto_1
    return-void

    .line 1073
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1083
    :cond_2
    if-eqz v11, :cond_4

    const/4 v2, 0x0

    aget v2, v11, v2

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    aget v2, v11, v2

    if-eq v2, v13, :cond_4

    .line 1085
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v16, v0

    .line 1086
    .local v16, topLeft:[I
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1088
    const/4 v2, 0x0

    aget v9, v16, v2

    .line 1089
    .local v9, left:I
    const/4 v2, 0x1

    aget v15, v16, v2

    .line 1091
    .local v15, top:I
    if-eqz p1, :cond_5

    if-nez p7, :cond_5

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1095
    .local v10, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    .line 1096
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v2

    .line 1101
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    .line 1103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1121
    .end local v10           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1122
    .local v14, oldIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1123
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v9, v15}, Landroid/graphics/Point;->set(II)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1131
    .end local v9           #left:I
    .end local v14           #oldIndex:I
    .end local v15           #top:I
    .end local v16           #topLeft:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_1

    .line 1106
    .restart local v9       #left:I
    .restart local v15       #top:I
    .restart local v16       #topLeft:[I
    :cond_5
    if-eqz p7, :cond_6

    if-eqz p8, :cond_6

    .line 1109
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v3, v3, p5

    add-int/lit8 v4, p5, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1111
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v15, v2

    goto :goto_2

    .line 1114
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int v2, v2, p6

    add-int/lit8 v3, p6, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    goto/16 :goto_2
.end method
