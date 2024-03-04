.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;I)V

    return-void
.end method
