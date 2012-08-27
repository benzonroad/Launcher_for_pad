.class public Lcom/android/launcher2/ScrollBar;
.super Landroid/view/ViewGroup;
.source "ScrollBar.java"


# instance fields
.field private mBgPaddingLeft:I

.field private mBgPaddingRight:I

.field private mDisplayHeight:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mScrollBarLength:I

.field private mTotalLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    .line 34
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 35
    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    .line 36
    iget-object v0, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingRight:I

    .line 37
    iget-object v0, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    .line 38
    iget-object v0, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mDisplayHeight:I

    .line 39
    iget v0, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingRight:I

    .line 40
    iget v0, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mScrollBarLength:I

    .line 41
    const-string v0, "ScrollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBgPaddingLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTotalLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 53
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPaddingLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPaddingRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ScrollBar;->mPaddingRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/ScrollBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 55
    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ScrollBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/ScrollBar;->mPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    iget v5, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/ScrollBar;->mPaddingBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ScrollBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/ScrollBar;->mPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/ScrollBar;->mPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/ScrollBar;->mBgPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/ScrollBar;->mPaddingBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 47
    iget v0, p0, Lcom/android/launcher2/ScrollBar;->mDisplayHeight:I

    iget-object v1, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingTop:I

    .line 48
    iget v0, p0, Lcom/android/launcher2/ScrollBar;->mDisplayHeight:I

    iget-object v1, p0, Lcom/android/launcher2/ScrollBar;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScrollBar;->mPaddingBottom:I

    .line 49
    return-void
.end method

.method public scrollLeftOrRight(III)V
    .locals 4
    .parameter "WidgetTotalPages"
    .parameter "currentPage"
    .parameter "appPages"

    .prologue
    .line 63
    const-string v1, "ScrollBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";currentPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appPages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v1, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mScrollBarLength:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    div-int/2addr v1, v2

    int-to-float v0, v1

    .line 65
    .local v0, offSet:F
    sub-int v1, p2, p3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    .line 66
    iget v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mScrollBarLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingRight:I

    .line 67
    if-ne p1, p2, :cond_0

    .line 68
    iget v1, p0, Lcom/android/launcher2/ScrollBar;->mTotalLength:I

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mScrollBarLength:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    .line 69
    iget v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/ScrollBar;->mScrollBarLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/ScrollBar;->mPaddingRight:I

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/ScrollBar;->requestLayout()V

    .line 72
    return-void
.end method
