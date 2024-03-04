.class public final Lj3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj3/i;)V
    .locals 0
    .param p0    # Lj3/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lj3/i;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
