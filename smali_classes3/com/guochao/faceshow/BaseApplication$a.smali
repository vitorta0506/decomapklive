.class Lcom/guochao/faceshow/BaseApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/BaseApplication;->initWhenMainProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/BaseApplication;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/BaseApplication$a;->a:Lcom/guochao/faceshow/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
