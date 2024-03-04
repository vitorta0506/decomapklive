.class public Lcom/tencent/xmagic/XmagicProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;,
        Lcom/tencent/xmagic/XmagicProperty$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final ID_NONE:Ljava/lang/String; = "ID_NONE"


# instance fields
.field public final category:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public effKey:Ljava/lang/String;

.field public effValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public isAuth:Z

.field public isSupport:Z

.field public resPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/xmagic/XmagicProperty$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty$Category;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 3
    iput-object p2, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/tencent/xmagic/XmagicProperty;->isSupport:Z

    .line 8
    iput-boolean p1, p0, Lcom/tencent/xmagic/XmagicProperty;->isAuth:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/tencent/xmagic/XmagicProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/xmagic/XmagicProperty;

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    instance-of v2, v1, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v1}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    iput-object v1, v0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/xmagic/XmagicProperty;->clone()Lcom/tencent/xmagic/XmagicProperty;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    check-cast p1, Lcom/tencent/xmagic/XmagicProperty;

    .line 3
    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    iget-object v3, p1, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 6
    :cond_6
    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmagicProperty{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "category="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resPath=\'"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", effKey=\'"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", effValue="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupport="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/xmagic/XmagicProperty;->isSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAuth="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/xmagic/XmagicProperty;->isAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
