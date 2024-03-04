.class public Ly7/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field private c:I

.field private d:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 1

    iget-object v0, p0, Ly7/p;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly7/p;->c:I

    return v0
.end method

.method public c()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 1

    iget-object v0, p0, Ly7/p;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-object v0
.end method

.method public d()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 1

    iget-object v0, p0, Ly7/p;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-object v0
.end method

.method public e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 0

    iput-object p1, p0, Ly7/p;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ly7/p;->c:I

    return-void
.end method

.method public g(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    iput-object p1, p0, Ly7/p;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-void
.end method

.method public h(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    iput-object p1, p0, Ly7/p;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-void
.end method
