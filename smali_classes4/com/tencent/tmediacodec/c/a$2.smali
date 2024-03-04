.class final Lcom/tencent/tmediacodec/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmediacodec/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmediacodec/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tmediacodec/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/tmediacodec/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/c/a$2;->a:Lcom/tencent/tmediacodec/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tmediacodec/b/e;)V
    .locals 2
    .param p1    # Lcom/tencent/tmediacodec/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onErase codecWrapper:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tmediacodec/b/e;->i()V

    return-void
.end method
