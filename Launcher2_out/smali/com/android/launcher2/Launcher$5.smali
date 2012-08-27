.class Lcom/android/launcher2/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Launcher;->mIsShowThemeList:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1002(Lcom/android/launcher2/Launcher;Z)Z

    .line 929
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showTransitionDialog()V

    .line 930
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getThemeAndOnclick()V

    .line 931
    return-void
.end method
