.class Lx2/g$a;
.super Lx2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx2/g;->w()Lx2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lx2/g;


# direct methods
.method constructor <init>(Lx2/g;)V
    .locals 0

    iput-object p1, p0, Lx2/g$a;->f:Lx2/g;

    invoke-direct {p0}, Lx2/l;-><init>()V

    return-void
.end method


# virtual methods
.method public p()V
    .locals 1

    iget-object v0, p0, Lx2/g$a;->f:Lx2/g;

    invoke-static {v0, p0}, Lx2/g;->u(Lx2/g;Lb2/f;)V

    return-void
.end method
