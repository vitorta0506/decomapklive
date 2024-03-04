.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$a;->a:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V

    return-void
.end method
