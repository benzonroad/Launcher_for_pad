.class Lcom/android/launcher2/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 1
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/android/launcher2/PagedView$3;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$3;->cancelled:Z

    .line 1842
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/launcher2/PagedView$3;->this$0:Lcom/android/launcher2/PagedView;

    #getter for: Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$100(Lcom/android/launcher2/PagedView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1848
    :cond_0
    return-void
.end method