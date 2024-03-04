.class Lsa/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic b:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic c:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    iput-object p1, p0, Lsa/c$b;->c:Lsa/c;

    iput-object p2, p0, Lsa/c$b;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iput-object p3, p0, Lsa/c$b;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lsa/c$b;->c:Lsa/c;

    iget-object v1, p0, Lsa/c$b;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-object v2, p0, Lsa/c$b;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {v0, v1, v2}, Lsa/c;->g(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method
