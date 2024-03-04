.class abstract Lw/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/n;


# instance fields
.field private a:Lw/n;


# direct methods
.method constructor <init>(Lw/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw/l;->a:Lw/n;

    return-void
.end method


# virtual methods
.method public b(Lu/a;)Z
    .locals 1

    iget-object v0, p0, Lw/l;->a:Lw/n;

    invoke-interface {v0, p1}, Lw/n;->b(Lu/a;)Z

    move-result p1

    return p1
.end method
