.class final Lh0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lw0/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lw0/c;->a()Lw0/c;

    move-result-object v0

    iput-object v0, p0, Lh0/j$b;->b:Lw0/c;

    .line 3
    iput-object p1, p0, Lh0/j$b;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public d()Lw0/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lh0/j$b;->b:Lw0/c;

    return-object v0
.end method
