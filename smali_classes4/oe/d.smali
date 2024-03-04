.class public final Loe/d;
.super Loe/a;
.source "SourceFile"


# instance fields
.field private c:Lne/e;


# direct methods
.method public constructor <init>(Lne/e;)V
    .locals 0
    .param p1    # Lne/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Loe/a;-><init>()V

    .line 2
    iput-object p1, p0, Loe/d;->c:Lne/e;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "preview"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "snapvideo/*"

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Loe/d;->c:Lne/e;

    invoke-virtual {v0}, Lne/e;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
