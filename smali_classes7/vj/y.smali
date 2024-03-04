.class public Lvj/y;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private b:Lvj/z;


# direct methods
.method public constructor <init>(ZLvj/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lvj/a;-><init>(Z)V

    iput-object p2, p0, Lvj/y;->b:Lvj/z;

    return-void
.end method


# virtual methods
.method public b()Lvj/z;
    .locals 1

    iget-object v0, p0, Lvj/y;->b:Lvj/z;

    return-object v0
.end method
