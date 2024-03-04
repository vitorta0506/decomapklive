.class public Lvj/q;
.super Lvj/n;
.source "SourceFile"


# instance fields
.field private final c:Lfk/i;


# direct methods
.method public constructor <init>(Lfk/i;Lvj/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lvj/n;-><init>(ZLvj/l;)V

    invoke-virtual {p2, p1}, Lvj/l;->g(Lfk/i;)Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lvj/q;->c:Lfk/i;

    return-void
.end method


# virtual methods
.method public c()Lfk/i;
    .locals 1

    iget-object v0, p0, Lvj/q;->c:Lfk/i;

    return-object v0
.end method
