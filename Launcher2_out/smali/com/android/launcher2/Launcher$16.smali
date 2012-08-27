.class Lcom/android/launcher2/Launcher$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animationCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$instance:Lcom/android/launcher2/Launcher;

.field final synthetic val$scaleAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$springLoaded:Z

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$16;->val$instance:Lcom/android/launcher2/Launcher;

    iput-object p4, p0, Lcom/android/launcher2/Launcher$16;->val$scaleAnim:Landroid/animation/ValueAnimator;

    iput-boolean p5, p0, Lcom/android/launcher2/Launcher$16;->val$springLoaded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->animationCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->animationCancelled:Z

    .line 2743
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 2723
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2724
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2725
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$16;->val$instance:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$16;->val$scaleAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2730
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->val$springLoaded:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2732
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2733
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2735
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->animationCancelled:Z

    if-nez v0, :cond_2

    .line 2736
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2738
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 2711
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2713
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2714
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2715
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2716
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2717
    return-void
.end method
