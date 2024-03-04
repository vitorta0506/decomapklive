.class public Lcom/guochao/faceshow/views/PasterOperationView;
.super Lcom/guochao/faceshow/views/TCLayerOperationView;
.source "SourceFile"


# instance fields
.field private D4:I

.field private E4:Ljava/lang/String;

.field private F4:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/TCLayerOperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/TCLayerOperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/views/TCLayerOperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getChildType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/PasterOperationView;->D4:I

    return v0
.end method

.method public getPasterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/PasterOperationView;->E4:Ljava/lang/String;

    return-object v0
.end method

.method public getPasterPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/PasterOperationView;->F4:Ljava/lang/String;

    return-object v0
.end method

.method public setChildType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/PasterOperationView;->D4:I

    return-void
.end method

.method public setPasterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PasterOperationView;->E4:Ljava/lang/String;

    return-void
.end method

.method public setPasterPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PasterOperationView;->F4:Ljava/lang/String;

    return-void
.end method
