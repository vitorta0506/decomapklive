.class public Lvj/g;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private b:Lvj/h;


# direct methods
.method public constructor <init>(ZLvj/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lvj/a;-><init>(Z)V

    iput-object p2, p0, Lvj/g;->b:Lvj/h;

    return-void
.end method


# virtual methods
.method public b()Lvj/h;
    .locals 1

    iget-object v0, p0, Lvj/g;->b:Lvj/h;

    return-object v0
.end method
