.class public Lb2/i;
.super Lb2/f;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field private final i:Lb2/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/f$a<",
            "Lb2/i;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public p()V
    .locals 1

    iget-object v0, p0, Lb2/i;->i:Lb2/f$a;

    invoke-interface {v0, p0}, Lb2/f$a;->a(Lb2/f;)V

    return-void
.end method
