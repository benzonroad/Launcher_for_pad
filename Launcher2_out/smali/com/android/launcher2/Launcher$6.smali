.class Lcom/android/launcher2/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 934
    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 937
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 938
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    .line 939
    iget-object v1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->onTouchDownAllAppsButton(Landroid/view/View;)V

    .line 951
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
