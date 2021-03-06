###################################
# FILE :todai2014-Ri-6-m.mpl
# AUTHOR : Munehiro Kobayashi <munehiro-k@math.tsukuba.ac.jp>
# DOMAIN : reals
# CITATION : first entrance exam U. Tokyo 2014, science [6](1)(2)
###################################
[
    [
    # Ex([Px, Qx, r],
    #     And(
    #         0<=Px, Px<=2,
    #         -2<=Qx, Qx<=0,
    #         (Px^2+((3^(1/2))*Px)^2)^(1/2) + (Qx^2+((-3^(1/2))*Qx)^2)^(1/2) = 6,
    #         0<=r, r<=1,
    #         s = r*Px + (1-r)*Qx,
    #         t = r*(3^(1/2))*Px + (1-r)*(-3^(1/2))*Qx
    #     )
    # ),
    Ex([Px, Qx, Z1, Z2, Z4, r],And(
        Or(t <= 0,-Px*r-Qx*r+Qx <= 0),
        Or(-t <= 0,Px*r+Qx*r-Qx <= 0),
        Or(Px-Z2 = 0,Px+Z2 = 0),
        Or(Qx-Z4 = 0,Qx+Z4 = 0),
        Qx <= 0,
        -Px <= 0,
        -Z2 <= 0,
        -Z4 <= 0,
        -r <= 0,
        -Qx <= 2,
        Px <= 2,
        Z1-2 = 0,
        r <= 1,
        Z1*Z2+Z1*Z4-6 = 0,
        Px*r-Qx*r+Qx-s = 0,
        3*Px^2*r^2+6*Px*Qx*r^2+3*Qx^2*r^2-6*Px*Qx*r-6*Qx^2*r+3*Qx^2-t^2 = 0)),
    # Or(
    #     And(-2<=s, s<=-1, -(3^(1/2))*s <= t, t <= 1/(3^(1/2))*(-s+4)),
    #     And(-1<=s, s<=0, (1/(3^(1/2)))*(s+4) <= t, t <= (1/(2*(3^(1/2))))*(s^2+9)),
    #     And(0<=s, s<=1, (1/(3^(1/2)))*(-s+4) <= t, t <= (1/(2*(3^(1/2))))*(s^2+9)),
    #     And(1<=s, s<=2, (3^(1/2))*s <= t, t <= (1/(3^(1/2)))*(s+4))
    # )
    And(Or(And(s <= 0,-s <= 1,s^2-3*t^2+8*s <= -16,-s^4-18*s^2+12*t^2 <= 81),
           And(-s <= 0,s <= 1,s^2-3*t^2-8*s <= -16,-s^4-18*s^2+12*t^2 <= 81),
           And(-s <= 2,s <= -1,3*s^2-t^2 <= 0,-s^2+3*t^2+8*s <= 16),
           And(-s <= -1,s <= 2,3*s^2-t^2 <= 0,-s^2+3*t^2-8*s <= 16)),-t < 0)
    ]
]:


