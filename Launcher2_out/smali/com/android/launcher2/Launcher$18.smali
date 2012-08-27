.class Lcom/android/launcher2/Launcher$18;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$fromView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2818
    iput-object p1, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$18;->val$fromView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/launcher2/Launcher$18;->val$fromView:Landroid/view/View;

    const/high16 v1, 0x3f80

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2821
    return-void
.end method
