.class public Lvj/n;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private final b:Lvj/l;


# direct methods
.method protected constructor <init>(ZLvj/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lvj/a;-><init>(Z)V

    const-string p1, "\'parameters\' cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lvj/n;->b:Lvj/l;

    return-void
.end method


# virtual methods
.method public b()Lvj/l;
    .locals 1

    iget-object v0, p0, Lvj/n;->b:Lvj/l;

    return-object v0
.end method
