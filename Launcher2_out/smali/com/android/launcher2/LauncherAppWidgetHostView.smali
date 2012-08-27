.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 115
    const/high16 v0, 0x6

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    .line 50
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 51
    const/4 v0, 0x1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    .line 64
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
