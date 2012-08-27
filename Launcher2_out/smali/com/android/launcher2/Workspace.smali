.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DragScroller;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$14;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$TransitionEffect;,
        Lcom/android/launcher2/Workspace$State;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F

.field private static final mMetroColor:[I


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mAnimatingViewIntoPlace:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mCamera:Landroid/graphics/Camera;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewMultiplyColor:I

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastDragOverView:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mNewAlphas:[F

.field private mNewBackgroundAlphaMultipliers:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewRotations:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphaMultipliers:[F

.field private mOldBackgroundAlphas:[F

.field private mOldRotationYs:[F

.field private mOldRotations:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverScrollPageIndex:I

.field private mOverscrollFade:F

.field private mResizeAnyWidget:Z

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedTranslationX:F

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mSwitchStateAfterFirstLayout:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private final mTempFloat2:[F

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x45cb2000

    sput v0, Lcom/android/launcher2/Workspace;->CAMERA_DISTANCE:F

    .line 259
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Workspace;->mMetroColor:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xft 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 299
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 114
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 115
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 116
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 118
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 134
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 139
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 147
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 148
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 149
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 150
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 151
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 152
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 153
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 165
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 166
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 167
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 173
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 174
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 175
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 178
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 180
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 181
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 182
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 183
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 185
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 188
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 191
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    .line 192
    new-instance v8, Landroid/graphics/Camera;

    invoke-direct {v8}, Landroid/graphics/Camera;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 193
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    .line 199
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 207
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 208
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 209
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 210
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 264
    new-instance v8, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v9, 0x3f00

    invoke-direct {v8, v9}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 265
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    const v9, 0x3f666666

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 266
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x4080

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 268
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mResizeAnyWidget:Z

    .line 1792
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 300
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 305
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 307
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 309
    const/4 v3, 0x4

    .line 310
    .local v3, cellCountX:I
    const/4 v4, 0x4

    .line 312
    .local v4, cellCountY:I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 316
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 321
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 323
    .local v2, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 324
    .local v1, actionBarHeight:F
    const v8, 0x7f0a0032

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 325
    .local v7, systemBarHeight:F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v6, v8

    .line 327
    .local v6, smallestScreenDim:F
    const/4 v3, 0x1

    .line 328
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_0

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_0
    const/4 v4, 0x1

    .line 334
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    sub-float v9, v6, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    .end local v1           #actionBarHeight:F
    .end local v2           #actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    .end local v6           #smallestScreenDim:F
    .end local v7           #systemBarHeight:F
    :cond_1
    const v8, 0x7f090005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    .line 341
    const v8, 0x7f070002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragViewMultiplyColor:I

    .line 343
    const v8, 0x7f090028

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 345
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 346
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 351
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 352
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 355
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 357
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 361
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 362
    return-void

    .line 348
    .restart local p1
    :cond_2
    const v8, 0x7f090028

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 349
    const v8, 0x7f09002d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldRotations:[F

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewRotations:[F

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1110
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1114
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1116
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1117
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1118
    if-eqz p2, :cond_4

    .line 1119
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1120
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1125
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1126
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1127
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1129
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private buildColor(III)I
    .locals 9
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3414
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x1

    .line 3415
    .local v8, isrepate:Z
    sget-object v0, Lcom/android/launcher2/Workspace;->mMetroColor:[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v7, v0, v1

    .line 3417
    .local v7, color:I
    :goto_0
    if-eqz v8, :cond_4

    .line 3418
    sget-object v0, Lcom/android/launcher2/Workspace;->mMetroColor:[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v7, v0, v1

    .line 3420
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->queryColor(IIILandroid/content/ContentResolver;II)I

    move-result v0

    if-ne v7, v0, :cond_0

    .line 3421
    const/4 v8, 0x1

    goto :goto_0

    .line 3423
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->queryColor(IIILandroid/content/ContentResolver;II)I

    move-result v0

    if-ne v7, v0, :cond_1

    .line 3424
    const/4 v8, 0x1

    goto :goto_0

    .line 3426
    :cond_1
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->queryColor(IIILandroid/content/ContentResolver;II)I

    move-result v0

    if-ne v7, v0, :cond_2

    .line 3427
    const/4 v8, 0x1

    goto :goto_0

    .line 3429
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->queryColor(IIILandroid/content/ContentResolver;II)I

    move-result v0

    if-ne v7, v0, :cond_3

    .line 3430
    const/4 v8, 0x1

    goto :goto_0

    .line 3432
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 3435
    :cond_4
    return v7
.end method

.method private cancelFolderCreation()V
    .locals 1

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3200
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 3201
    return-void
.end method

.method private cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3187
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_1

    .line 3188
    if-eqz p1, :cond_1

    .line 3189
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3192
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 3193
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 6
    .parameter "page"

    .prologue
    const/high16 v5, 0x3f80

    .line 931
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 932
    .local v0, layoutScale:F
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 933
    .local v1, scaled:I
    iput v5, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 935
    .local v2, unscaled:F
    iput v0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 936
    if-lez v1, :cond_0

    .line 937
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iput v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2226
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2227
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2228
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2230
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v6, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2231
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 2234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 2235
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2238
    sub-int v4, p4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, p5, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2240
    invoke-virtual {p2, p1, v0, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2241
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v2, p2

    move v4, v3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2243
    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2245
    return-object v1
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2213
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2214
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2215
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2216
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2217
    return-object v1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2255
    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2256
    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2257
    const v3, 0x7f0a000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2258
    const v4, 0x7f0a0061

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2259
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2260
    add-int v5, v2, p2

    add-int v6, v3, p2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2263
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2264
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2266
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v0, v5, p1, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2267
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2268
    return-object v5
.end method

.method private doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 2712
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2715
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2717
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2719
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2721
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 2722
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2724
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2725
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2727
    :cond_1
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 9
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2121
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2123
    .local v0, clipRect:Landroid/graphics/Rect;
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 2124
    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 2125
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p3

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 2126
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, p3

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2127
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2129
    const/4 v3, 0x0

    .line 2131
    .local v3, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2132
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    .line 2133
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v8

    .line 2134
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2135
    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2136
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2172
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2173
    return-void

    .line 2138
    .restart local p1
    :cond_1
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 2141
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 2142
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 2143
    const/4 v3, 0x1

    .line 2163
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v7, p3, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2164
    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2165
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2168
    if-eqz v3, :cond_0

    .line 2169
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    invoke-virtual {p1, v8}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 2145
    .restart local p1
    :cond_3
    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-nez v5, :cond_2

    .line 2152
    instance-of v5, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v5, :cond_4

    .line 2154
    sget-object v5, Lcom/android/launcher2/Workspace;->mMetroColor:[I

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    .line 2155
    .local v2, pvColor:I
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 2157
    .end local v2           #pvColor:I
    :cond_4
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 2159
    check-cast v4, Landroid/widget/TextView;

    .line 2160
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 2981
    const/4 v3, 0x0

    .line 2982
    const v2, 0x7f7fffff

    .line 2984
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 2985
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2987
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v6, 0x0

    aput p2, v1, v6

    const/4 v6, 0x1

    aput p3, v1, v6

    .line 2990
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2991
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2993
    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 3018
    :goto_1
    return-object v0

    .line 2998
    :cond_0
    if-nez p4, :cond_2

    .line 3000
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 3001
    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3002
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3003
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 3005
    const/4 v7, 0x0

    aput p2, v1, v7

    .line 3006
    const/4 v7, 0x1

    aput p3, v1, v7

    .line 3010
    invoke-static {v1, v6}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v1

    .line 3012
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 2984
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 3018
    goto :goto_1

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3526
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3515
    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3028
    if-nez p6, :cond_0

    .line 3029
    const/4 v0, 0x2

    new-array p6, v0, [F

    .line 3036
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 3037
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3043
    sub-int/2addr v0, p3

    .line 3044
    sub-int/2addr v1, p4

    .line 3047
    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    .line 3048
    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    .line 3050
    return-object p6
.end method

.method private getOffsetXForRotation(FII)F
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 1156
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1157
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1158
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1159
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1160
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1162
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    neg-int v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1163
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1164
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    int-to-float v1, p2

    aput v1, v0, v4

    .line 1165
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 1166
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1167
    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    aget v1, v1, v4

    sub-float v1, v0, v1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 609
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 610
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 611
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 614
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v3

    .line 611
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v3

    .line 614
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1841
    .local v0, childCount:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1842
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1843
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1844
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1845
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1846
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1847
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    .line 1848
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1849
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldRotations:[F

    .line 1850
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    .line 1851
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1852
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1853
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1854
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1855
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1856
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    .line 1857
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1858
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotations:[F

    .line 1859
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 3054
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 3058
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 6
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 3249
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 3250
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3262
    new-instance v24, Lcom/android/launcher2/Workspace$11;

    invoke-direct/range {v24 .. v25}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;)V

    move-object/from16 v2, p2

    .line 3269
    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 3270
    iget v5, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3271
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 3273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 3274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 3277
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v10, -0x65

    .line 3280
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 3281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v12, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_1

    .line 3283
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3286
    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v3, :cond_6

    .line 3287
    check-cast p2, Lcom/android/launcher2/PendingAddItemInfo;

    .line 3289
    const/4 v9, 0x1

    .line 3290
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 3291
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3293
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3296
    :cond_2
    const/4 v2, 0x0

    .line 3299
    :goto_1
    if-eqz v2, :cond_3

    .line 3300
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3304
    :cond_3
    new-instance v7, Lcom/android/launcher2/Workspace$12;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;JILcom/android/launcher2/CellLayout;)V

    .line 3328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v12, v2, v3

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v2

    .line 3330
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3331
    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    aput v5, v3, v4

    .line 3332
    const/4 v4, 0x1

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    aput v5, v3, v4

    .line 3333
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v4

    .line 3336
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3338
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v6}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v8}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3342
    const/4 v6, 0x0

    aget v8, v3, v6

    int-to-float v8, v8

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v9}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v3, v6

    .line 3343
    const/4 v6, 0x1

    aget v8, v3, v6

    int-to-float v8, v8

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v9}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float v2, v9, v2

    const/high16 v9, 0x4000

    div-float/2addr v2, v9

    sub-float v2, v8, v2

    float-to-int v2, v2

    aput v2, v3, v6

    .line 3345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    mul-float/2addr v4, v5

    invoke-virtual {v2, v6, v3, v4, v7}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFLjava/lang/Runnable;)V

    .line 3411
    :cond_4
    :goto_2
    return-void

    .line 3277
    :cond_5
    const-wide/16 v10, -0x64

    goto/16 :goto_0

    .line 3351
    :cond_6
    iget v3, v2, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 3366
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3354
    :pswitch_0
    iget-wide v3, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_9

    instance-of v3, v2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v3, :cond_9

    .line 3356
    new-instance v3, Lcom/android/launcher2/ShortcutInfo;

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {v3, v2}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3358
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v7, 0x7f030002

    move-object v2, v3

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v4, v7, v0, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v23, v3

    .line 3371
    :goto_4
    if-eqz p1, :cond_7

    .line 3372
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3374
    move-object/from16 v0, v24

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v13, p0

    move-wide v15, v10

    move-object/from16 v17, p3

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3384
    :cond_7
    if-eqz p1, :cond_8

    .line 3386
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3391
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v19, v2, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, p0

    move-wide v15, v10

    move/from16 v17, v12

    move/from16 v22, p4

    invoke-virtual/range {v13 .. v22}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3393
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3394
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3395
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 3397
    iget v2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v4}, Lcom/android/launcher2/Workspace;->buildColor(III)I

    move-result v4

    .line 3398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v3, v23

    move-wide v4, v10

    move v6, v12

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIILjava/lang/Integer;)V

    .line 3401
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_4

    .line 3405
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v14, v0}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3408
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_2

    .line 3362
    :pswitch_1
    const v4, 0x7f03000b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p3

    invoke-static {v4, v7, v0, v3, v8}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v14

    move-object/from16 v23, v2

    .line 3364
    goto/16 :goto_4

    .line 3389
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_5

    :cond_9
    move-object v3, v2

    goto/16 :goto_3

    :cond_a
    move v2, v9

    goto/16 :goto_1

    .line 3351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3663
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 3665
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3669
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3671
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3672
    return-void
.end method

.method private queryColor(IIILandroid/content/ContentResolver;II)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3438
    .line 3439
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "color"

    aput-object v0, v2, v7

    const-string v3, "screen=? and cellX=? and cellY=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v5, p2, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v5, p3, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3444
    const-string v0, "color"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 3445
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v6

    .line 3449
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3450
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    goto :goto_0

    .line 3455
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3457
    :goto_1
    return v1

    .line 3452
    :catch_0
    move-exception v0

    .line 3453
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3455
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v1, v6

    goto :goto_0
.end method

.method private screenScrolledCube(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    .line 1329
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1330
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1331
    if-eqz v0, :cond_1

    .line 1332
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1333
    if-eqz p2, :cond_2

    const/high16 v2, 0x42b4

    :goto_1
    mul-float v5, v2, v4

    .line 1334
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    .line 1336
    if-eqz p2, :cond_0

    .line 1337
    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    sget v6, Lcom/android/launcher2/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 1340
    :cond_0
    cmpg-float v2, v4, v3

    if-gez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1341
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f00

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1342
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1343
    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1344
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1329
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1333
    :cond_2
    const/high16 v2, -0x3d4c

    goto :goto_1

    .line 1340
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_2

    .line 1347
    :cond_4
    return-void
.end method

.method private screenScrolledRotate(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f00

    .line 1298
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1299
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1300
    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1302
    if-eqz p2, :cond_2

    const/high16 v2, 0x4148

    :goto_1
    mul-float/2addr v2, v3

    .line 1304
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 1306
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    const-wide/high16 v6, 0x4019

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 1310
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1311
    if-eqz p2, :cond_3

    .line 1312
    neg-float v5, v5

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1317
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setRotation(F)V

    .line 1318
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1319
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1320
    const/high16 v2, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 1321
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1323
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1298
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1302
    :cond_2
    const/high16 v2, -0x3eb8

    goto :goto_1

    .line 1314
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    goto :goto_2

    .line 1326
    :cond_4
    return-void
.end method

.method private screenScrolledStandard(I)V
    .locals 6
    .parameter "screenScroll"

    .prologue
    const/high16 v5, 0x3f80

    .line 1240
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1241
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1242
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_0

    .line 1243
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1244
    .local v3, scrollProgress:F
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1245
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v0, v5, v4

    .line 1246
    .local v0, alpha:F
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1247
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1240
    .end local v0           #alpha:F
    .end local v3           #scrollProgress:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method private screenScrolledTablet(I)V
    .locals 6
    .parameter

    .prologue
    .line 1254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1255
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1256
    if-eqz v0, :cond_1

    .line 1257
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1258
    const/high16 v3, 0x4148

    mul-float/2addr v3, v2

    .line 1259
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v4

    .line 1261
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1262
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 1263
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1264
    const/high16 v3, 0x3f80

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    .line 1265
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1267
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1254
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1270
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1271
    return-void
.end method

.method private screenScrolledZoom(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const v3, 0x3dcccccd

    .line 1274
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1275
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1276
    if-eqz v0, :cond_2

    .line 1277
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1278
    if-eqz p2, :cond_3

    const v2, -0x41b33333

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    .line 1281
    if-nez p2, :cond_0

    .line 1282
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    neg-float v6, v4

    mul-float/2addr v5, v6

    .line 1283
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1286
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastScaleX(F)V

    .line 1287
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastScaleY(F)V

    .line 1288
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1289
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    .line 1290
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1292
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1274
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1278
    goto :goto_1

    .line 1295
    :cond_4
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .parameter "point1"
    .parameter "point2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2923
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2924
    .local v0, distanceX:F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2925
    .local v1, distanceY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncChildrenLayersEnabledOnVisiblePages()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1589
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getVisiblePages([I)V

    .line 1591
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1592
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v1, v4

    .line 1593
    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v1, v0

    .line 1594
    :goto_0
    if-gt v1, v2, :cond_1

    .line 1595
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1596
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const v3, 0x3caaaaab

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1598
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1594
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1603
    :cond_1
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 884
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 887
    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1705
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v6, :cond_3

    :cond_0
    move v3, v4

    .line 1706
    .local v3, small:Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-eqz v6, :cond_4

    :cond_1
    move v0, v4

    .line 1707
    .local v0, dragging:Z
    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    move v1, v4

    .line 1709
    .local v1, enableChildrenLayers:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_6

    .line 1710
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 1714
    if-nez v1, :cond_6

    .line 1715
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1716
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1715
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #dragging:Z
    .end local v1           #enableChildrenLayers:Z
    .end local v2           #i:I
    .end local v3           #small:Z
    :cond_3
    move v3, v5

    .line 1705
    goto :goto_0

    .restart local v3       #small:Z
    :cond_4
    move v0, v5

    .line 1706
    goto :goto_1

    .restart local v0       #dragging:Z
    :cond_5
    move v1, v5

    .line 1707
    goto :goto_2

    .line 1720
    .restart local v1       #enableChildrenLayers:Z
    :cond_6
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 894
    const/4 v1, 0x0

    .line 895
    .local v1, updateNow:Z
    const/4 v0, 0x1

    .line 896
    .local v0, keepUpdating:Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 897
    const/4 v1, 0x1

    .line 898
    const/4 v0, 0x0

    .line 899
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 900
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 904
    :goto_0
    if-eqz v1, :cond_0

    .line 905
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 910
    :cond_0
    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 913
    :cond_1
    return-void

    .line 902
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2743
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    .line 2744
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 2745
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    .line 2746
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 2747
    invoke-virtual {v4, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 2748
    const-string v6, "com.android.launcher/shortcut"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2749
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2758
    :goto_1
    return-object v0

    .line 2751
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v0}, Lcom/android/launcher2/LauncherModel;->resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2753
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2754
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2746
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2758
    goto :goto_1
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    .line 855
    iget v6, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 856
    .local v6, wallpaperTravelWidth:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 857
    iget v6, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 861
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float v8, v9, v8

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 866
    iget v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 867
    .local v1, layoutScale:F
    iput v9, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 868
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v5

    .line 871
    .local v5, scrollRange:I
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 872
    .local v0, adjustedScrollX:F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v7

    .line 873
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 875
    int-to-float v7, v5

    div-float v4, v0, v7

    .line 877
    .local v4, scrollProgress:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v3, v7, v8

    .line 879
    .local v3, offsetInDips:F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v7, v7

    div-float v2, v3, v7

    .line 880
    .local v2, offset:F
    return v2
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 780
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 801
    const v1, 0x3e9d89d7

    mul-float/2addr v0, v1

    const v1, 0x3f80fc10

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 14
    .parameter "d"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2360
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_7

    .line 2362
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_0

    move v0, v11

    .line 2417
    :goto_0
    return v0

    .line 2365
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_0

    .line 2367
    :cond_1
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2371
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2377
    :goto_1
    const/4 v3, 0x1

    .line 2378
    .local v3, spanX:I
    const/4 v4, 0x1

    .line 2379
    .local v4, spanY:I
    const/4 v10, 0x0

    .line 2380
    .local v10, ignoreView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 2381
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2382
    .local v7, dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget v3, v7, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2383
    iget v4, v7, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2384
    iget-object v10, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2391
    .end local v7           #dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v11

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v12

    float-to-int v2, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2393
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    .line 2394
    goto :goto_0

    .line 2374
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1, v13}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_1

    .line 2386
    .restart local v3       #spanX:I
    .restart local v4       #spanY:I
    .restart local v10       #ignoreView:Landroid/view/View;
    :cond_3
    iget-object v8, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    .line 2387
    .local v8, dragInfo:Lcom/android/launcher2/ItemInfo;
    iget v3, v8, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2388
    iget v4, v8, Lcom/android/launcher2/ItemInfo;->spanY:I

    goto :goto_2

    .line 2396
    .end local v8           #dragInfo:Lcom/android/launcher2/ItemInfo;
    :cond_4
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v12

    .line 2398
    goto/16 :goto_0

    .line 2402
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v13, v3, v4, v10}, Lcom/android/launcher2/CellLayout;->findCellForSpanIgnoring([IIILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2405
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2406
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v9

    .line 2407
    .local v9, hotseat:Lcom/android/launcher2/Hotseat;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v1, v1, v12

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v11

    .line 2409
    goto/16 :goto_0

    .line 2413
    .end local v9           #hotseat:Lcom/android/launcher2/Hotseat;
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    move v0, v11

    .line 2414
    goto/16 :goto_0

    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_7
    move v0, v12

    .line 2417
    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v6

    .line 2344
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2345
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2346
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v6

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2347
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    aget v5, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, p1

    move-wide v2, p3

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIILjava/lang/Integer;)V

    .line 2349
    return-void
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
    .line 1659
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1660
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1661
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1662
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1667
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1664
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 517
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 518
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 7
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 534
    const-wide/16 v1, -0x64

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 535
    if-ltz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lt p4, v1, :cond_2

    .line 536
    :cond_0
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The screen must be >= 0 and < "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (was "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "); skipping child"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 543
    .restart local p1
    :cond_2
    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_8

    .line 544
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 545
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 548
    instance-of v1, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 549
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 552
    :cond_3
    if-gez p4, :cond_7

    .line 553
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    .line 570
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 571
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v4, :cond_a

    .line 572
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-direct {v4, p5, p6, p7, p8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 580
    .restart local v4       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p7, :cond_4

    if-gez p8, :cond_4

    .line 581
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 585
    :cond_4
    invoke-static/range {p2 .. p8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v3

    .line 586
    .local v3, childId:I
    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_b

    const/4 v5, 0x1

    .line 587
    .local v5, markCellsAsOccupied:Z
    :goto_3
    if-eqz p9, :cond_c

    const/4 v2, 0x0

    :goto_4
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 591
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add to item at ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") to CellLayout"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_5
    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_6

    .line 595
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 596
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 598
    :cond_6
    instance-of v1, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto/16 :goto_0

    .line 557
    .end local v3           #childId:I
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #markCellsAsOccupied:Z
    .restart local p1
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 558
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    goto/16 :goto_1

    .line 562
    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    :cond_8
    instance-of v1, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_9

    move-object v1, p1

    .line 563
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 566
    :cond_9
    invoke-virtual {p0, p4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 567
    .restart local v0       #layout:Lcom/android/launcher2/CellLayout;
    new-instance v1, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .line 574
    .restart local v4       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_a
    iput p5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 575
    iput p6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 576
    iput p7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 577
    iput p8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 586
    .restart local v3       #childId:I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 587
    .restart local v5       #markCellsAsOccupied:Z
    :cond_c
    const/4 v2, -0x1

    goto/16 :goto_4
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z
    .locals 6
    .parameter "newView"
    .parameter "target"
    .parameter "targetCell"
    .parameter "d"
    .parameter "external"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2506
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2507
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 2508
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2509
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    iget-object v4, p4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2510
    invoke-virtual {v1, p4}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2513
    if-nez p5, :cond_0

    .line 2514
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2519
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 3
    .parameter

    .prologue
    .line 1171
    const v0, 0x3dcccccd

    .line 1172
    const v1, 0x3ecccccd

    .line 1173
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1174
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return v0

    .line 1175
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1176
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1178
    :cond_1
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 2296
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2299
    sget v5, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2302
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2306
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 2307
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    aget v2, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2308
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v3, v7

    .line 2312
    instance-of v7, p1, Lcom/android/launcher2/BubbleTextView;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v7, :cond_2

    .line 2313
    :cond_0
    const v0, 0x7f0a0020

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2314
    const v7, 0x7f0a0019

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2315
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 2316
    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    .line 2317
    add-int v9, v6, v0

    .line 2318
    add-int v10, v7, v0

    .line 2319
    add-int/2addr v3, v7

    .line 2322
    new-instance v0, Landroid/graphics/Point;

    neg-int v8, v5

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2323
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    .line 2330
    :goto_0
    instance-of v0, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 2331
    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 2332
    invoke-virtual {v0}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2335
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2337
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2338
    return-void

    .line 2324
    :cond_2
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_3

    .line 2325
    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2326
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {v8, v9, v9, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    goto :goto_0

    :cond_3
    move-object v8, v0

    move-object v7, v0

    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 404
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 406
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->buildChildrenLayer()V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0           #childCount:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method public changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .parameter "shrinkState"

    .prologue
    .line 1863
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;Z)V

    .line 1864
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;Z)V
    .locals 1
    .parameter "state"
    .parameter "animated"

    .prologue
    .line 1867
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V

    .line 1868
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZI)V
    .locals 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2111
    :goto_0
    return-void

    .line 1874
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1877
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1878
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    goto :goto_0

    .line 1883
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1887
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1890
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1893
    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v2, :cond_15

    const/4 v2, 0x1

    move v3, v2

    .line 1894
    :goto_2
    sget-object v2, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v2, :cond_16

    const/4 v2, 0x1

    move v4, v2

    .line 1895
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1896
    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_17

    const/4 v2, 0x1

    move v5, v2

    .line 1897
    :goto_4
    sget-object v2, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_18

    const/4 v2, 0x1

    move v6, v2

    .line 1898
    :goto_5
    sget-object v2, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_19

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 1899
    :goto_6
    const/high16 v9, 0x3f80

    .line 1900
    if-eqz v6, :cond_1a

    const/high16 v2, 0x3f80

    .line 1901
    :goto_7
    const/4 v8, 0x0

    .line 1902
    const/16 v19, 0x0

    .line 1903
    const/4 v7, 0x1

    .line 1905
    sget-object v10, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v10, :cond_1d

    .line 1906
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    if-eqz v18, :cond_1b

    const v9, 0x3dcccccd

    :goto_8
    sub-float v9, v10, v9

    .line 1907
    if-eqz v3, :cond_1c

    if-eqz v18, :cond_1c

    .line 1908
    const/4 v7, 0x0

    .line 1909
    if-eqz p2, :cond_3

    .line 1910
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 1912
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1913
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    .line 1922
    :goto_9
    if-eqz v15, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f090004

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    .line 1925
    :goto_a
    const/4 v2, 0x0

    move v9, v8

    move v8, v2

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v8, v2, :cond_24

    .line 1926
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1927
    const/4 v14, 0x0

    .line 1928
    const/4 v13, 0x0

    .line 1929
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getAlpha()F

    move-result v12

    .line 1930
    const/high16 v11, 0x3f80

    .line 1931
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v10, :cond_4

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v8, v10, :cond_1f

    :cond_4
    const/high16 v10, 0x3f80

    .line 1935
    :goto_c
    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    if-eqz v3, :cond_8

    if-eqz v18, :cond_8

    .line 1939
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v8, v10, :cond_7

    if-nez p2, :cond_20

    .line 1940
    :cond_7
    const/high16 v10, 0x3f80

    .line 1941
    const/4 v11, 0x0

    .line 1949
    :cond_8
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->Tablet:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    if-nez v18, :cond_9

    if-eqz v6, :cond_a

    .line 1950
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_21

    .line 1951
    const/high16 v13, 0x4148

    .line 1970
    :cond_a
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->Tablet:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-nez v5, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v20

    if-eqz v20, :cond_d

    if-nez v18, :cond_c

    if-eqz v6, :cond_d

    .line 1972
    :cond_c
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v9, v1}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v9

    .line 1975
    :cond_d
    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateDown:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1977
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    sget-object v20, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_22

    const/high16 v14, 0x4148

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    sub-int v20, v20, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 1981
    :cond_f
    if-nez v18, :cond_10

    if-eqz v6, :cond_13

    .line 1982
    :cond_10
    const/high16 v20, 0x44a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDensity:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateDown:Lcom/android/launcher2/Workspace$TransitionEffect;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 1985
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1987
    :cond_12
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1988
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1991
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v20, v0

    aput v12, v20, v8

    .line 1992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aput v10, v12, v8

    .line 1993
    if-eqz p2, :cond_23

    .line 1994
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v12

    aput v12, v10, v8

    .line 1995
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v12

    aput v12, v10, v8

    .line 1996
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v12

    aput v12, v10, v8

    .line 1997
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v12

    aput v12, v10, v8

    .line 1998
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v12

    aput v12, v10, v8

    .line 1999
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getBackgroundAlphaMultiplier()F

    move-result v12

    aput v12, v10, v8

    .line 2000
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldRotations:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getRotation()F

    move-result v12

    aput v12, v10, v8

    .line 2001
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v2

    aput v2, v10, v8

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aput v9, v2, v8

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aput v19, v2, v8

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aput v17, v2, v8

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aput v17, v2, v8

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    aput v16, v2, v8

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    aput v11, v2, v8

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewRotations:[F

    aput v14, v2, v8

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aput v13, v2, v8

    .line 1925
    :goto_10
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_b

    .line 1890
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto/16 :goto_1

    .line 1893
    :cond_15
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 1894
    :cond_16
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1896
    :cond_17
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_4

    .line 1897
    :cond_18
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_5

    .line 1898
    :cond_19
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_6

    .line 1900
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1906
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1915
    :cond_1c
    const/high16 v2, 0x3f80

    .line 1916
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    goto/16 :goto_9

    .line 1919
    :cond_1d
    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    move v15, v7

    move/from16 v16, v2

    move/from16 v17, v9

    goto/16 :goto_9

    .line 1922
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f090010

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    goto/16 :goto_a

    .line 1931
    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 1943
    :cond_20
    const/4 v12, 0x0

    .line 1944
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 1952
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_a

    .line 1953
    const/high16 v13, -0x3eb8

    goto/16 :goto_e

    .line 1977
    :cond_22
    const/high16 v14, -0x3eb8

    goto/16 :goto_f

    .line 2012
    :cond_23
    invoke-virtual {v2, v9}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2013
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 2014
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 2015
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 2016
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 2017
    invoke-virtual {v2, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 2018
    invoke-virtual {v2, v10}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 2019
    invoke-virtual {v2, v14}, Lcom/android/launcher2/CellLayout;->setRotation(F)V

    .line 2020
    invoke-virtual {v2, v13}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_10

    .line 2025
    :cond_24
    if-eqz p2, :cond_26

    .line 2026
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2029
    if-eqz v15, :cond_25

    .line 2030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2033
    :cond_25
    new-instance v3, Lcom/android/launcher2/Workspace$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v4}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;ZZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2048
    new-instance v3, Lcom/android/launcher2/Workspace$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2073
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2075
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x4000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2076
    new-instance v4, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2100
    :cond_26
    if-eqz v6, :cond_27

    .line 2104
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    .line 2110
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    goto/16 :goto_0

    .line 2108
    :cond_27
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto :goto_11

    .line 2026
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2073
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1693
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1694
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1695
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1696
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1698
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1699
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1694
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1702
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 3750
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3751
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutChildren;

    .line 3752
    .local v4, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3753
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3754
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3755
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/DropTarget;

    if-eqz v6, :cond_1

    .line 3756
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3753
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3760
    .end local v0           #childCount:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1056
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1057
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1058
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2180
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2192
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2195
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2196
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2197
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 2198
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragViewMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2199
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2201
    return-object v1
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .locals 21
    .parameter "newView"
    .parameter "container"
    .parameter "target"
    .parameter "targetCell"
    .parameter "external"
    .parameter "dragView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 2456
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2457
    .local v9, v:Landroid/view/View;
    const/16 v19, 0x0

    .line 2458
    .local v19, hasntMoved:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2460
    .local v17, cellParent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    .line 2464
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    .line 2501
    :goto_1
    return v2

    .line 2460
    .restart local v17       #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 2465
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2466
    if-nez p5, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 2468
    .local v6, screen:I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/android/launcher2/ShortcutInfo;

    .line 2469
    .local v15, aboveShortcut:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v20, v0

    .line 2471
    .local v20, willBecomeShortcut:Z
    if-eqz v15, :cond_8

    if-eqz v20, :cond_8

    .line 2472
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 2473
    .local v10, sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/ShortcutInfo;

    .line 2475
    .local v18, destInfo:Lcom/android/launcher2/ShortcutInfo;
    if-nez p6, :cond_4

    .line 2476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2479
    :cond_4
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2480
    .local v12, folderLocation:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2481
    .local v13, scale:F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v7

    .line 2485
    .local v7, fi:Lcom/android/launcher2/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2486
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2487
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2488
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2491
    if-eqz p7, :cond_6

    const/16 v16, 0x1

    .line 2492
    .local v16, animate:Z
    :goto_3
    if-eqz v16, :cond_7

    move-object/from16 v8, v18

    move-object/from16 v11, p7

    move-object/from16 v14, p8

    .line 2493
    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2499
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2466
    .end local v6           #screen:I
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v15           #aboveShortcut:Z
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v20           #willBecomeShortcut:Z
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_2

    .line 2491
    .restart local v6       #screen:I
    .restart local v7       #fi:Lcom/android/launcher2/FolderIcon;
    .restart local v10       #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v12       #folderLocation:Landroid/graphics/Rect;
    .restart local v13       #scale:F
    .restart local v15       #aboveShortcut:Z
    .restart local v18       #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v20       #willBecomeShortcut:Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 2496
    .restart local v16       #animate:Z
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2497
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_4

    .line 2501
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x3f060a92

    .line 687
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 691
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    div-float v2, v1, v0

    .line 694
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 696
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 697
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 700
    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_0

    .line 703
    cmpl-float v0, v2, v4

    if-lez v0, :cond_4

    .line 708
    sub-float v0, v2, v4

    .line 709
    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 711
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 714
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 1607
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1609
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v2

    .line 1611
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v3

    .line 1612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1615
    sub-int v0, v3, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1616
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    add-int v4, v1, v0

    .line 1617
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    add-int v5, v1, v0

    .line 1619
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1620
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1622
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1624
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1626
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1629
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v1, v6

    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1631
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromPage"
    .parameter "toPage"

    .prologue
    const/4 v5, 0x1

    .line 1674
    if-le p1, p2, :cond_0

    .line 1675
    move v3, p1

    .line 1676
    .local v3, temp:I
    move p1, p2

    .line 1677
    move p2, v3

    .line 1680
    .end local v3           #temp:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1682
    .local v2, screenCount:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1683
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1685
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1686
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1687
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1688
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1690
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;
    .locals 8
    .parameter "cl"
    .parameter "pendingInfo"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 387
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, r:Landroid/graphics/RectF;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 389
    instance-of v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 390
    check-cast v7, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 391
    .local v7, widgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 393
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 394
    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 395
    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 396
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 398
    .end local v6           #p:Landroid/graphics/Rect;
    .end local v7           #widgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_0
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I
    .locals 10
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "pendingItemInfo"
    .parameter "springLoaded"

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 368
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 369
    .local v8, size:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .local v1, cl:Lcom/android/launcher2/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v7

    .line 372
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v3

    .line 373
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v9

    .line 374
    if-eqz p4, :cond_0

    .line 375
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 376
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 382
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #r:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v8

    .line 380
    :cond_1
    aput v2, v8, v3

    .line 381
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1835
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 1836
    .local v0, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1837
    return-void
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 2

    .prologue
    .line 3495
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    goto :goto_0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3911
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 3912
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0045

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

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3911
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    const/high16 v0, 0x6

    .line 1654
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 2734
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 8
    .parameter "tag"

    .prologue
    .line 3719
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3720
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 3721
    .local v6, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3722
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3723
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3724
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 3725
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3726
    .local v3, f:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v7, :cond_1

    .line 3732
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #f:Lcom/android/launcher2/Folder;
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v3

    .line 3722
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3732
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 3231
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3232
    return-void
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 3918
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 6

    .prologue
    .line 488
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 489
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 490
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 491
    invoke-virtual {v2, v4}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 493
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 494
    .local v3, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v5, :cond_0

    .line 498
    .end local v0           #child:Landroid/view/View;
    .end local v3           #folder:Lcom/android/launcher2/Folder;
    :goto_1
    return-object v3

    .line 490
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 498
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 5
    .parameter "v"

    .prologue
    .line 3678
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 3679
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3680
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 3684
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 3736
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3737
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    .line 3738
    .local v5, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3739
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3740
    invoke-virtual {v5, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3741
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 3746
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 3739
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v5       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3746
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3708
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3709
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3710
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3712
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3713
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3715
    :cond_1
    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3692
    .local v0, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3693
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3694
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3696
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3697
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3699
    :cond_1
    return-object v0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1074
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1075
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1076
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1077
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1079
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 632
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 636
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 632
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    goto :goto_0

    .line 636
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 621
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 625
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 621
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    goto :goto_0

    .line 625
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initWorkspace()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 428
    .local v1, context:Landroid/content/Context;
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 429
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 430
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 431
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 432
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 434
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Standard"

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherPreferences;->getTransitionEffect(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher2/Workspace$TransitionEffect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 438
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 458
    const/16 v4, 0x258

    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 459
    new-instance v4, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 460
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 461
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 462
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 463
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v6, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 465
    return-void

    .line 439
    .end local v2           #display:Landroid/view/Display;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3574
    const/4 v0, 0x1

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2917
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2918
    const/4 v0, 0x0

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2919
    const/4 v0, 0x1

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2920
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2879
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 4
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2892
    if-nez p3, :cond_0

    .line 2893
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2894
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2896
    :cond_0
    aget v0, p2, v2

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2897
    aget v0, p2, v3

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2898
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2899
    return-void
.end method

.method mapPointFromSelfToSibling(Landroid/view/View;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2906
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2907
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2908
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 3891
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3892
    if-eqz p1, :cond_1

    .line 3893
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3898
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3899
    return-void

    .line 3895
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 773
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 774
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 775
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1528
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1529
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1531
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1532
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1536
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 419
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 420
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 421
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2697
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2700
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2701
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2705
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2706
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2708
    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .parameter

    .prologue
    .line 2766
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 2767
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2768
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 2769
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 2771
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    aget v3, v6, v3

    sub-int v3, v1, v3

    .line 2772
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    aget v4, v6, v4

    sub-int v4, v1, v4

    .line 2774
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2868
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2777
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v1

    .line 2778
    if-eqz v1, :cond_1

    .line 2779
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2780
    :goto_1
    if-eqz v1, :cond_2

    .line 2782
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2783
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 2784
    const/4 v0, 0x0

    goto :goto_0

    .line 2779
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2791
    const/4 v0, 0x0

    goto :goto_0

    .line 2796
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2797
    sget v2, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2798
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2801
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2802
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2803
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2805
    const/4 v0, 0x1

    goto :goto_0

    .line 2809
    :pswitch_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2810
    const/4 v0, 0x1

    goto :goto_0

    .line 2813
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v5

    .line 2814
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 2820
    const/4 v1, 0x0

    aput v3, v6, v1

    .line 2821
    const/4 v1, 0x1

    aput v4, v6, v1

    .line 2822
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v7

    .line 2823
    if-eqz v7, :cond_3

    .line 2824
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2825
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 2826
    if-nez v11, :cond_4

    const/4 v1, 0x1

    .line 2827
    :goto_2
    invoke-virtual {v2, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    .line 2828
    if-eqz v1, :cond_5

    .line 2829
    invoke-virtual {v10, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2830
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v2, v1, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 2831
    if-eqz v1, :cond_3

    .line 2832
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 2860
    :cond_3
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2826
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 2835
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2838
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2839
    new-instance v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {v1, v0, v9, v10}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2841
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const-wide/16 v2, -0x64

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I)V

    goto :goto_3

    .line 2846
    :cond_6
    new-instance v7, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object v12, v0

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/android/launcher2/CellLayout;I[I)V

    .line 2849
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2851
    invoke-virtual {v0, v7, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2852
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2853
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2855
    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2856
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 2864
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2865
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2866
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 2730
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2731
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3063
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 3066
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3068
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/launcher2/ItemInfo;

    .line 3071
    iget v0, v7, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v0, :cond_2

    iget v0, v7, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3072
    :cond_3
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 3076
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3077
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3078
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3079
    iget v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3080
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3083
    :goto_1
    if-nez v0, :cond_4

    .line 3084
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3086
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eq v0, v1, :cond_6

    .line 3088
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 3090
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_5

    .line 3091
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3092
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3094
    :cond_5
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3095
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_a

    .line 3096
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3097
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3102
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_b

    move v1, v10

    .line 3103
    :goto_3
    if-eqz v1, :cond_6

    .line 3104
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3105
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 3134
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v0, :cond_10

    move-object v9, v8

    .line 3138
    :goto_5
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3139
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 3143
    :goto_6
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    .line 3145
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v11

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v10

    float-to-int v2, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v0, p0

    move v3, v10

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3147
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 3150
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v8, v0, v2, v11}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v2

    .line 3152
    instance-of v3, v1, Lcom/android/launcher2/FolderIcon;

    .line 3153
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_7

    .line 3154
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cancelFolderCreation()V

    .line 3155
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_7

    .line 3156
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    iget-object v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3160
    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_8

    .line 3166
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v1, v0, :cond_9

    if-eqz v3, :cond_9

    move-object v0, v1

    .line 3167
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3168
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_9

    .line 3169
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3172
    :cond_9
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 3174
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v3, v1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v10

    float-to-int v4, v1

    iget v5, v7, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v6, v7, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v8

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 3099
    :cond_a
    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    goto/16 :goto_2

    :cond_b
    move v1, v11

    .line 3102
    goto/16 :goto_3

    .line 3107
    :cond_c
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_4

    .line 3113
    :cond_d
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3114
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3115
    iget v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3116
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3119
    :goto_7
    if-nez v0, :cond_e

    .line 3120
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3122
    :cond_e
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eq v0, v1, :cond_6

    .line 3123
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_f

    .line 3124
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3125
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3127
    :cond_f
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3128
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3129
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_4

    .line 3135
    :cond_10
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v9, v0

    goto/16 :goto_5

    .line 3141
    :cond_11
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_6

    :cond_12
    move-object v0, v8

    goto :goto_7

    :cond_13
    move-object v0, v8

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 413
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 414
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 415
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1804
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 1807
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1810
    .local v0, bitmapPadding:I
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1811
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "info"
    .parameter "b"
    .parameter "alphaClipPaint"

    .prologue
    const/4 v4, 0x0

    .line 1814
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1817
    .local v2, canvas:Landroid/graphics/Canvas;
    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1819
    .local v3, bitmapPadding:I
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I

    move-result-object v7

    .line 1822
    .local v7, size:[I
    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1823
    return-void
.end method

.method public onDragStopped(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 1829
    if-nez p1, :cond_0

    .line 1830
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 1832
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1564
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    .line 1565
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1566
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1567
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1569
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1572
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1573
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 39
    .parameter "d"

    .prologue
    .line 2523
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_0

    .line 2528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2535
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2537
    .local v7, dropTargetLayout:Lcom/android/launcher2/CellLayout;
    const/16 v38, -0x1

    .line 2538
    .local v38, snapScreen:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_3

    .line 2539
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    .line 2541
    .local v5, touchXY:[I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2657
    .end local v5           #touchXY:[I
    :cond_1
    :goto_1
    return-void

    .line 2531
    .end local v7           #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    .end local v38           #snapScreen:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2542
    .restart local v7       #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    .restart local v38       #snapScreen:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_1

    .line 2543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v25, v0

    .line 2545
    .local v25, cell:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 2547
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    if-eq v4, v7, :cond_b

    const/16 v31, 0x1

    .line 2548
    .local v31, hasMovedLayouts:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v30

    .line 2549
    .local v30, hasMovedIntoHotseat:Z
    if-eqz v30, :cond_c

    const-wide/16 v15, -0x65

    .line 2552
    .local v15, container:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-gez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v37, v0

    .line 2554
    .local v37, screen:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v11, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2555
    .local v11, spanX:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v12, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2558
    .local v12, spanY:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v8, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2562
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2567
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v25

    move-object/from16 v19, v7

    move-object/from16 v21, p1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    move-object/from16 v17, p0

    move-object/from16 v22, v25

    move-object/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2577
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v0, v37

    if-eq v4, v0, :cond_5

    if-nez v30, :cond_5

    .line 2578
    move/from16 v38, v37

    .line 2579
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2582
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ltz v4, :cond_a

    .line 2583
    if-eqz v31, :cond_6

    .line 2585
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move/from16 v17, v37

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2591
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/ItemInfo;

    .line 2592
    .local v14, info:Lcom/android/launcher2/ItemInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2593
    .local v33, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v4, v6}, Lcom/android/launcher2/CellLayout;->onMove(Landroid/view/View;II)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    invoke-static/range {v15 .. v21}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 2599
    const-wide/16 v8, -0x65

    cmp-long v4, v15, v8

    if-eqz v4, :cond_9

    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_9

    .line 2601
    move-object/from16 v26, v7

    .local v26, cellLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v32, v25

    .line 2605
    check-cast v32, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2606
    .local v32, hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v35

    .line 2607
    .local v35, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v6, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v6, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    if-eq v4, v6, :cond_10

    :cond_7
    const/16 v29, 0x1

    .line 2609
    .local v29, hasMovedCells:Z
    :goto_7
    move-object/from16 v0, v35

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Workspace;->mResizeAnyWidget:Z

    if-eqz v4, :cond_9

    :cond_8
    if-nez v29, :cond_9

    if-nez v31, :cond_9

    .line 2611
    new-instance v36, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2617
    .local v36, resizeRunnable:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2629
    .end local v26           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v29           #hasMovedCells:Z
    .end local v32           #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v35           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v36           #resizeRunnable:Ljava/lang/Runnable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    move/from16 v17, v37

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2634
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v14           #info:Lcom/android/launcher2/ItemInfo;
    .end local v15           #container:J
    .end local v30           #hasMovedIntoHotseat:Z
    .end local v31           #hasMovedLayouts:Z
    .end local v33           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v37           #screen:I
    :cond_a
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    check-cast v34, Lcom/android/launcher2/CellLayout;

    .line 2638
    .local v34, parent:Lcom/android/launcher2/CellLayout;
    new-instance v27, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;)V

    .line 2645
    .local v27, disableHardwareLayersRunnable:Ljava/lang/Runnable;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2646
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2647
    if-gez v38, :cond_11

    const/16 v28, -0x1

    .line 2648
    .local v28, duration:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalScrollForPageChange(I)V

    .line 2649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 2651
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetFinalScrollForPageChange(I)V

    .line 2655
    .end local v28           #duration:I
    :goto_9
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2547
    .end local v27           #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .end local v34           #parent:Lcom/android/launcher2/CellLayout;
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 2549
    .restart local v30       #hasMovedIntoHotseat:Z
    .restart local v31       #hasMovedLayouts:Z
    :cond_c
    const-wide/16 v15, -0x64

    goto/16 :goto_3

    .line 2552
    .restart local v15       #container:J
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v37

    goto/16 :goto_4

    .line 2554
    .restart local v37       #screen:I
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 2555
    .restart local v11       #spanX:I
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 2607
    .restart local v12       #spanY:I
    .restart local v14       #info:Lcom/android/launcher2/ItemInfo;
    .restart local v26       #cellLayout:Lcom/android/launcher2/CellLayout;
    .restart local v32       #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .restart local v33       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v35       #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2647
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v14           #info:Lcom/android/launcher2/ItemInfo;
    .end local v15           #container:J
    .end local v26           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v30           #hasMovedIntoHotseat:Z
    .end local v31           #hasMovedLayouts:Z
    .end local v32           #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v33           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v35           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v37           #screen:I
    .restart local v27       #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .restart local v34       #parent:Lcom/android/launcher2/CellLayout;
    :cond_11
    const/16 v28, 0x12c

    goto :goto_8

    .line 2653
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V
    .locals 4
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 3544
    if-eqz p3, :cond_2

    .line 3545
    if-eq p1, p0, :cond_0

    .line 3546
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3547
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3548
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 3549
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3566
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3567
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3569
    :cond_1
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3570
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3571
    return-void

    .line 3553
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3557
    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 3559
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3560
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3564
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_0

    .line 3562
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayout;
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3608
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3609
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3610
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3611
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    .line 3639
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v3

    .line 3616
    :cond_1
    const/4 v3, 0x0

    .line 3617
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 3618
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3620
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez p3, :cond_3

    const/4 v4, -0x1

    :goto_1
    add-int v1, v7, v4

    .line 3621
    .local v1, page:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3622
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cancelFolderCreation()V

    .line 3624
    if-eqz v0, :cond_0

    .line 3626
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_2

    .line 3627
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3628
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3630
    :cond_2
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3631
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3635
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3636
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_3
    move v4, v5

    .line 3620
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3644
    const/4 v0, 0x0

    .line 3645
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    .line 3646
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    .line 3648
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3649
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3650
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3654
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3655
    const/4 v0, 0x1

    .line 3657
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3659
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 682
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 670
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    goto :goto_0

    .line 675
    :sswitch_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v1, :cond_0

    .line 676
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 677
    .local v0, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1543
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1547
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v0, :cond_1

    .line 1548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1551
    new-instance v0, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1557
    :cond_1
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 725
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 727
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 741
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 744
    :cond_0
    return-void

    .line 730
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 732
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 736
    :cond_2
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 747
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 749
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->dragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 762
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 763
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 765
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 769
    :cond_1
    return-void

    .line 752
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1640
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1646
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :goto_0
    return v1

    .line 1643
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1646
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3579
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3580
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3581
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 475
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 476
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 478
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 479
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 481
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    .line 482
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1723
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1724
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1727
    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 1728
    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    .line 1730
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1734
    return-void

    .line 1730
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 655
    return-void
.end method

.method protected overScroll(F)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 1520
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->dampedOverScroll(F)V

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->acceleratedOverScroll(F)V

    goto :goto_0
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 2
    .parameter

    .prologue
    .line 1183
    const v0, 0x3da3d70a

    .line 1185
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1186
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1191
    :cond_0
    :goto_0
    div-float v0, p1, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 1187
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1188
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 3763
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 3765
    .local v4, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3766
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3767
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 3768
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3767
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3771
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v7

    .line 3772
    .local v7, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3773
    .local v5, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3776
    .local v2, layout:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/launcher2/Workspace$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3856
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v5           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 2673
    if-ltz p1, :cond_0

    .line 2674
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2675
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2676
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2677
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2679
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 3476
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3477
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3478
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3479
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3480
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3481
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3482
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3483
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3484
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3485
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3486
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3488
    :cond_0
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v4, 0x3e80

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1422
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->screenScrolled(I)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1425
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1426
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1427
    if-eqz v0, :cond_2

    .line 1428
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1429
    const/high16 v3, 0x4148

    mul-float/2addr v2, v3

    .line 1430
    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1431
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 1432
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1425
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1435
    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v0, v2, :cond_b

    .line 1436
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-gez v0, :cond_6

    move v2, v1

    .line 1437
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1438
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1439
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    .line 1441
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v2, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1442
    const/high16 v1, -0x3e40

    mul-float v6, v1, v5

    .line 1443
    iget v1, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    sget v7, Lcom/android/launcher2/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 1444
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    if-nez v2, :cond_7

    const/high16 v1, 0x3f40

    :goto_3
    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1445
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1446
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1447
    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1448
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1449
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    goto/16 :goto_0

    .line 1436
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_7
    move v1, v4

    .line 1444
    goto :goto_3

    .line 1452
    :cond_8
    if-eqz v0, :cond_0

    .line 1453
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    .line 1454
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v2, :cond_9

    move v1, v3

    :cond_9
    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1455
    const/high16 v1, -0x3eb8

    mul-float/2addr v1, v5

    .line 1456
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->overScrollBackgroundAlphaInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1458
    iput v2, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 1459
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_a

    const/high16 v4, 0x3f40

    :cond_a
    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1460
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1461
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    goto/16 :goto_0

    .line 1465
    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_d

    move v2, v1

    .line 1466
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 1467
    iget v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    if-eq v0, v2, :cond_c

    .line 1468
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1469
    if-eqz v0, :cond_c

    .line 1470
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1471
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1466
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1477
    :cond_d
    iget v0, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    .line 1478
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1482
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1483
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1484
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1486
    :cond_f
    sget-object v0, Lcom/android/launcher2/Workspace$14;->$SwitchMap$com$android$launcher2$Workspace$TransitionEffect:[I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTransitionEffect:Lcom/android/launcher2/Workspace$TransitionEffect;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$TransitionEffect;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1488
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->screenScrolledStandard(I)V

    goto/16 :goto_0

    .line 1491
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->screenScrolledTablet(I)V

    goto/16 :goto_0

    .line 1494
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/Workspace;->screenScrolledZoom(IZ)V

    goto/16 :goto_0

    .line 1497
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/Workspace;->screenScrolledZoom(IZ)V

    goto/16 :goto_0

    .line 1500
    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/Workspace;->screenScrolledRotate(IZ)V

    goto/16 :goto_0

    .line 1503
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/Workspace;->screenScrolledRotate(IZ)V

    goto/16 :goto_0

    .line 1506
    :pswitch_6
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/Workspace;->screenScrolledCube(IZ)V

    goto/16 :goto_0

    .line 1509
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/Workspace;->screenScrolledCube(IZ)V

    goto/16 :goto_0

    .line 1486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 3585
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3586
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3588
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3589
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3590
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3592
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 3596
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3597
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3599
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3600
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3601
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3603
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1580
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    .line 1581
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    .line 1582
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1136
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1137
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1139
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1088
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 1089
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1090
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1091
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method setFadeForOverScroll(F)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v1, 0x3f00

    .line 3921
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3934
    :goto_0
    return-void

    .line 3923
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 3924
    sub-float v0, v4, p1

    mul-float/2addr v0, v1

    add-float v2, v1, v0

    .line 3925
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3926
    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    .line 3927
    const v3, 0x7f060022

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    .line 3928
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollingIndicator()Landroid/widget/ImageView;

    move-result-object v3

    .line 3930
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 3931
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3932
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3933
    :cond_2
    sub-float v0, v4, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    .line 2660
    if-ltz p1, :cond_0

    .line 2661
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2662
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2663
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2664
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2666
    .local v1, newX:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2667
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2668
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2670
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #newX:I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 3461
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3462
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3463
    .local v0, index:I
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3464
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3465
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3466
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3467
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3468
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3469
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3470
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3471
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3472
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3474
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 846
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 840
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 3

    .prologue
    .line 810
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 811
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 812
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 813
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 817
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    int-to-float v2, v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 819
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 831
    :goto_0
    new-instance v0, Lcom/android/launcher2/Workspace$2;

    const-string v1, "setWallpaperDimension"

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$2;->start()V

    .line 836
    return-void

    .line 821
    :cond_0
    int-to-float v0, v0

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 822
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .locals 2
    .parameter "dragController"

    .prologue
    .line 3531
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3532
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3536
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 3537
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 3538
    return-void
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1064
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1065
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1066
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1068
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1085
    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 0
    .parameter "whichPage"

    .prologue
    .line 923
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 924
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 925
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 4
    .parameter "cellInfo"

    .prologue
    .line 2272
    iget-object v2, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2275
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2293
    :goto_0
    return-void

    .line 2279
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2280
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2283
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2285
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2288
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2291
    .local v0, bitmapPadding:I
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2292
    invoke-virtual {p0, v2, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 3907
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 3903
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2352
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .prologue
    .line 917
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateCurrentPageScroll()V

    .line 918
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 919
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 14
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
    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 3859
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 3860
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    .line 3861
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    move v6, v5

    .line 3862
    :goto_0
    if-ge v6, v8, :cond_0

    .line 3863
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3864
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3865
    instance-of v2, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v2, :cond_2

    .line 3866
    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 3870
    iget-object v2, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3871
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 3872
    iget v4, v1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v9, :cond_2

    .line 3874
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v4, v5

    .line 3875
    :goto_1
    if-ge v4, v10, :cond_2

    .line 3876
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 3877
    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3878
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    iget-object v11, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v11}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 3879
    check-cast v2, Landroid/widget/TextView;

    new-instance v11, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v12, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v1, v12}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v13, v11, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3875
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 3862
    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 3888
    :cond_3
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z
    .locals 6
    .parameter "dragInfo"
    .parameter "target"
    .parameter "targetCell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2444
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2445
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2446
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2447
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2451
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z
    .locals 9
    .parameter "info"
    .parameter "target"
    .parameter "targetCell"
    .parameter "considerTimeout"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2422
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 2424
    .local v2, dropOverView:Landroid/view/View;
    const/4 v3, 0x0

    .line 2425
    .local v3, hasntMoved:Z
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v7, :cond_0

    .line 2426
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 2427
    .local v1, cellParent:Lcom/android/launcher2/CellLayout;
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    aget v8, p3, v6

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    aget v8, p3, v5

    if-ne v7, v8, :cond_3

    if-ne v1, p2, :cond_3

    move v3, v5

    .line 2431
    .end local v1           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    if-eqz p4, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v7, :cond_4

    :cond_1
    move v5, v6

    .line 2440
    :cond_2
    :goto_1
    return v5

    .restart local v1       #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_3
    move v3, v6

    .line 2427
    goto :goto_0

    .line 2435
    .end local v1           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/ShortcutInfo;

    .line 2436
    .local v0, aboveShortcut:Z
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v7, v5, :cond_7

    :cond_5
    move v4, v5

    .line 2440
    .local v4, willBecomeShortcut:Z
    :goto_2
    if-eqz v0, :cond_6

    if-nez v4, :cond_2

    :cond_6
    move v5, v6

    goto :goto_1

    .end local v4           #willBecomeShortcut:Z
    :cond_7
    move v4, v6

    .line 2436
    goto :goto_2
.end method
