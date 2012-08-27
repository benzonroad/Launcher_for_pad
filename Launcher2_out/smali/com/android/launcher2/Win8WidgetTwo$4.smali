.class Lcom/android/launcher2/Win8WidgetTwo$4;
.super Landroid/os/AsyncTask;
.source "Win8WidgetTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Win8WidgetTwo;->changeBluetoothState(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Win8WidgetTwo;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/launcher2/Win8WidgetTwo$4;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    iput-object p2, p0, Lcom/android/launcher2/Win8WidgetTwo$4;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher2/Win8WidgetTwo$4;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 509
    const/4 v0, 0x0

    return-object v0
.end method
