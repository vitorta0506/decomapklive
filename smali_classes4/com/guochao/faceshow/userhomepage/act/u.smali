.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

.field public final synthetic b:Lcom/youth/banner/Banner;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/u;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/u;->b:Lcom/youth/banner/Banner;

    iput p3, p0, Lcom/guochao/faceshow/userhomepage/act/u;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/u;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/u;->b:Lcom/youth/banner/Banner;

    iget v2, p0, Lcom/guochao/faceshow/userhomepage/act/u;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$5;->a(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;ILandroid/view/View;)V

    return-void
.end method
