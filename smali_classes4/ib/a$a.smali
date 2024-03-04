.class Lib/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/a;->a(Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/SvgaImageViewV2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 0

    iput-object p1, p0, Lib/a$a;->a:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib/a$a;->a:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    .line 2
    iget-object v0, p0, Lib/a$a;->a:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
