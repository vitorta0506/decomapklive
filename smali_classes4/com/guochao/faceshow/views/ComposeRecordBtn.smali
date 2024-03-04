.class public Lcom/guochao/faceshow/views/ComposeRecordBtn;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/guochao/faceshow/views/RecordProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00f8

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05cf

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a0952

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/RecordProgressView;

    iput-object p1, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RecordProgressView;->f()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getProgressView()Lcom/guochao/faceshow/views/RecordProgressView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0952

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RecordProgressView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/ComposeRecordBtn;->b:Lcom/guochao/faceshow/views/RecordProgressView;

    return-object v0
.end method
