.class Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/content/Context;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->c:Landroid/view/View;

    const v0, 0x7f0a0d0b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
