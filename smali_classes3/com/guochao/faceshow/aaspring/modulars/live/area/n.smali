.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/area/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;I)V

    return-void
.end method
