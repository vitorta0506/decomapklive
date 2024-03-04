.class public Lj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Li/b;


# direct methods
.method public constructor <init>(Li/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a;->a:Li/b;

    return-void
.end method


# virtual methods
.method public a()Li/b;
    .locals 1

    iget-object v0, p0, Lj/a;->a:Li/b;

    return-object v0
.end method
