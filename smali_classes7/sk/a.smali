.class public Lsk/a;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lvj/a;-><init>(Z)V

    iput-object p2, p0, Lsk/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/a;->b:Ljava/lang/String;

    return-object v0
.end method
