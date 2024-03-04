.class public Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bottomEdgeSpace:I

.field private context:Landroid/content/Context;

.field private isIncludeBottom:Z

.field private isIncludeLeft:Z

.field private isIncludeRight:Z

.field private isIncludeTop:Z

.field private leftEdgeSpace:I

.field private orientation:I

.field private paintColor:I

.field private rectSpace:I

.field private rightEdgeSpace:I

.field private topEdgeSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->orientation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->paintColor:I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->context:Landroid/content/Context;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 5
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rectSpace:I

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->bottomEdgeSpace:I

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rightEdgeSpace:I

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->topEdgeSpace:I

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->leftEdgeSpace:I

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->orientation:I

    return p0
.end method

.method static synthetic access$1000(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeBottom:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->paintColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rectSpace:I

    return p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->leftEdgeSpace:I

    return p0
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->topEdgeSpace:I

    return p0
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rightEdgeSpace:I

    return p0
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->bottomEdgeSpace:I

    return p0
.end method

.method static synthetic access$700(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeLeft:Z

    return p0
.end method

.method static synthetic access$800(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeTop:Z

    return p0
.end method

.method static synthetic access$900(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeRight:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration;-><init>(Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$1;)V

    return-object v0
.end method

.method public getBottomEdgeSpace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->bottomEdgeSpace:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLeftEdgeSpace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->leftEdgeSpace:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->orientation:I

    return v0
.end method

.method public getPaintColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->paintColor:I

    return v0
.end method

.method public getRectSpace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rectSpace:I

    return v0
.end method

.method public getRightEdgeSpace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rightEdgeSpace:I

    return v0
.end method

.method public getTopEdgeSpace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->topEdgeSpace:I

    return v0
.end method

.method public isIncludeBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeBottom:Z

    return v0
.end method

.method public isIncludeLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeLeft:Z

    return v0
.end method

.method public isIncludeRight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeRight:Z

    return v0
.end method

.method public isIncludeTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeTop:Z

    return v0
.end method

.method public setBottomEdgeSpace(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->bottomEdgeSpace:I

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setIncludeBottom(Z)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeBottom:Z

    return-object p0
.end method

.method public setIncludeLeft(Z)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeLeft:Z

    return-object p0
.end method

.method public setIncludeRight(Z)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeRight:Z

    return-object p0
.end method

.method public setIncludeTop(Z)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->isIncludeTop:Z

    return-object p0
.end method

.method public setLeftEdgeSpace(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->leftEdgeSpace:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->orientation:I

    return-object p0
.end method

.method public setPaintColor(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->paintColor:I

    return-object p0
.end method

.method public setRectSpace(F)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rectSpace:I

    return-object p0
.end method

.method public setRightEdgeSpace(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->rightEdgeSpace:I

    return-object p0
.end method

.method public setTopEdgeSpace(I)Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicDividerItemDecoration$Builder;->topEdgeSpace:I

    return-object p0
.end method
