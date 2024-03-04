.class public final synthetic Lcom/guochao/faceshow/aaspring/views/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/l;->a:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/l;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/l;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/views/l;->d:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/guochao/faceshow/aaspring/views/l;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/l;->a:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/l;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/l;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/l;->d:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/l;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;->a(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;I)V

    return-void
.end method
