.class Lbb/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->i(Ljava/util/List;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lod/b<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbb/b;


# direct methods
.method constructor <init>(Lbb/b;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbb/b$c;->c:Lbb/b;

    iput-boolean p2, p0, Lbb/b$c;->a:Z

    iput-object p3, p0, Lbb/b$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbb/b$c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    iget-object v1, p0, Lbb/b$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lbb/a;->c(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    iget-object v1, p0, Lbb/b$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lbb/a;->d(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lbb/b$c;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
