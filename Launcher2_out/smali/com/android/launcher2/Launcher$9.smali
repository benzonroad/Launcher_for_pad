.class Lcom/android/launcher2/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->getThemeAndOnclick()V
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
    .line 1069
    iput-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1075
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1076
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1077
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1078
    iget-object v1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGridTheme:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1200(Lcom/android/launcher2/Launcher;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1080
    iget-object v1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1081
    iget-object v1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1082
    return-void
.end method
