.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/area/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->c(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;Landroid/view/View;)V

    return-void
.end method
