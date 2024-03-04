.class Lx2/f$a;
.super Lx2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx2/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lx2/f;


# direct methods
.method constructor <init>(Lx2/f;)V
    .locals 0

    iput-object p1, p0, Lx2/f$a;->f:Lx2/f;

    invoke-direct {p0}, Lx2/l;-><init>()V

    return-void
.end method


# virtual methods
.method public p()V
    .locals 1

    iget-object v0, p0, Lx2/f$a;->f:Lx2/f;

    invoke-static {v0, p0}, Lx2/f;->d(Lx2/f;Lx2/l;)V

    return-void
.end method
