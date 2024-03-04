.class Lcom/guochao/faceshow/aaspring/manager/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/a;->s(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/manager/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/a;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->c:Lcom/guochao/faceshow/aaspring/manager/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->c:Lcom/guochao/faceshow/aaspring/manager/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/a$c;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method
