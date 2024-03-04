.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->a:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-void
.end method


# virtual methods
.method public synthetic onCustomRecharge()V
    .locals 0

    invoke-static {p0}, Lp9/c;->a(Lp9/a$f;)V

    return-void
.end method

.method public final onResponse()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->a:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/c;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->a(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method
