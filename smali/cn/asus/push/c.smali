.class public abstract Lcn/asus/push/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcn/asus/push/d;


# direct methods
.method public static b(Landroid/os/IBinder;)Lcn/asus/push/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.asus.push.IAIDLInvoke"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/asus/push/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcn/asus/push/d;

    return-object v0

    :cond_1
    new-instance v0, Lcn/asus/push/g;

    invoke-direct {v0, p0}, Lcn/asus/push/g;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static f()Lcn/asus/push/d;
    .locals 1

    sget-object v0, Lcn/asus/push/g;->b:Lcn/asus/push/d;

    return-object v0
.end method
