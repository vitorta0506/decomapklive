.class Lod/c$a;
.super Ls0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lod/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lod/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/i<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lod/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lod/b;)V
    .locals 0

    iput-object p1, p0, Lod/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lod/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lod/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lod/c$a;->d:Lod/b;

    invoke-direct {p0}, Ls0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p2, p0, Lod/c$a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lod/c$a;->b:Ljava/lang/String;

    invoke-static {p2, p2}, Lod/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lod/c$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lod/c$a;->d:Lod/b;

    invoke-static {p2, v0, p1, v1}, Lod/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lod/b;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lod/c$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lod/c$a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lod/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lod/c$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lod/c$a;->d:Lod/b;

    invoke-static {p2, v0, p1, v1}, Lod/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lod/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lod/c$a;->onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V

    return-void
.end method
