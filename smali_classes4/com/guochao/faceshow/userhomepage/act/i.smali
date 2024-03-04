.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

.field public final synthetic b:Lcom/youth/banner/Banner;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/i;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/i;->b:Lcom/youth/banner/Banner;

    iput-object p3, p0, Lcom/guochao/faceshow/userhomepage/act/i;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/i;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/i;->b:Lcom/youth/banner/Banner;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/i;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->e0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;I)V

    return-void
.end method
