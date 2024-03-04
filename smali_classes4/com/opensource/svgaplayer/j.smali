.class public final synthetic Lcom/opensource/svgaplayer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/opensource/svgaplayer/j;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/opensource/svgaplayer/j;->b:[B

    invoke-static {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->b(Ljava/lang/String;[B)V

    return-void
.end method
